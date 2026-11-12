:github_url: hide

.. _class_MeshLibrary:

MeshLibrary
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Bibliothèque de maillages.

.. rst-class:: classref-introduction-group

Description
-----------

Une bibliothèque de maillages. Contient une liste des ressources :ref:`Mesh<class_Mesh>`, chacune avec un nom et un identifiant. Chaque article peut également inclure des formes de collision et de navigation. Cette ressource est utilisée dans :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de personnage cinématique en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/category<class_MeshLibrary_property_item/{index}/category>`                                   | ``&""``                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                     | :ref:`item/{index}/mesh<class_MeshLibrary_property_item/{index}/mesh>`                                           |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/mesh_cast_shadow<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`                   | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/mesh_transform<class_MeshLibrary_property_item/{index}/mesh_transform>`                       | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`String<class_String>`                 | :ref:`item/{index}/name<class_MeshLibrary_property_item/{index}/name>`                                           | ``""``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`item/{index}/navigation_layers<class_MeshLibrary_property_item/{index}/navigation_layers>`                 | ``1``                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>` | :ref:`item/{index}/navigation_mesh<class_MeshLibrary_property_item/{index}/navigation_mesh>`                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`       | :ref:`item/{index}/navigation_mesh_transform<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>` | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`           | :ref:`item/{index}/preview<class_MeshLibrary_property_item/{index}/preview>`                                     |                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`item/{index}/shapes<class_MeshLibrary_property_item/{index}/shapes>`                                       | ``[]``                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`clear<class_MeshLibrary_method_clear>`\ (\ )                                                                                                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`create_item<class_MeshLibrary_method_create_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`find_item_by_name<class_MeshLibrary_method_find_item_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`get_item_category<class_MeshLibrary_method_get_item_category>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_count<class_MeshLibrary_method_get_item_count>`\ (\ ) |const|                                                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                        | :ref:`get_item_list<class_MeshLibrary_method_get_item_list>`\ (\ ) |const|                                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                | :ref:`get_item_mesh<class_MeshLibrary_method_get_item_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` | :ref:`get_item_mesh_cast_shadow<class_MeshLibrary_method_get_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_mesh_transform<class_MeshLibrary_method_get_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`get_item_name<class_MeshLibrary_method_get_item_name>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_item_navigation_layers<class_MeshLibrary_method_get_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`                            | :ref:`get_item_navigation_mesh<class_MeshLibrary_method_get_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_item_navigation_mesh_transform<class_MeshLibrary_method_get_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                      | :ref:`get_item_preview<class_MeshLibrary_method_get_item_preview>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                            |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                              | :ref:`get_item_shapes<class_MeshLibrary_method_get_item_shapes>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`get_last_unused_item_id<class_MeshLibrary_method_get_last_unused_item_id>`\ (\ ) |const|                                                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_item<class_MeshLibrary_method_remove_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_category<class_MeshLibrary_method_set_item_category>`\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ )                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh<class_MeshLibrary_method_set_item_mesh>`\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                          |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_cast_shadow<class_MeshLibrary_method_set_item_mesh_cast_shadow>`\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_mesh_transform<class_MeshLibrary_method_set_item_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ )                                              |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_name<class_MeshLibrary_method_set_item_name>`\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                      |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_layers<class_MeshLibrary_method_set_item_navigation_layers>`\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ )                                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh<class_MeshLibrary_method_set_item_navigation_mesh>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                     |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_navigation_mesh_transform<class_MeshLibrary_method_set_item_navigation_mesh_transform>`\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ )                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_preview<class_MeshLibrary_method_set_item_preview>`\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                       |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_item_shapes<class_MeshLibrary_method_set_item_shapes>`\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ )                                                                                  |
   +------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_MeshLibrary_property_item/{index}/category:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/category** = ``&""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/category>`

The item's category. Used to organize meshes in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **item/{index}/mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh>`

The item's mesh. Used by other parts of the engine (e.g. :ref:`GridMap<class_GridMap>`, which displays them in a 3D tile).

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_cast_shadow:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/mesh_cast_shadow** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_cast_shadow>`

The shadow casting mode used by the item's mesh. See :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/mesh_transform>`

The transform to apply to the item's mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/name:

.. rst-class:: classref-property

:ref:`String<class_String>` **item/{index}/name** = ``""`` :ref:`🔗<class_MeshLibrary_property_item/{index}/name>`

The item's name, shown in the editor. It can also be used to look up the item later using :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **item/{index}/navigation_layers** = ``1`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_layers>`

The item's navigation layers bitmask.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh:

.. rst-class:: classref-property

:ref:`NavigationMesh<class_NavigationMesh>` **item/{index}/navigation_mesh** :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh>`

The item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/navigation_mesh_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **item/{index}/navigation_mesh_transform** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_MeshLibrary_property_item/{index}/navigation_mesh_transform>`

The transform to apply to the item's navigation mesh.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/preview:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **item/{index}/preview** :ref:`🔗<class_MeshLibrary_property_item/{index}/preview>`

The texture to use as the item's preview icon in the editor.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_property_item/{index}/shapes:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **item/{index}/shapes** = ``[]`` :ref:`🔗<class_MeshLibrary_property_item/{index}/shapes>`

The item's collision shapes. The array should consist of :ref:`Shape3D<class_Shape3D>` objects, each followed by a :ref:`Transform3D<class_Transform3D>` that will be applied to it. For shapes that should not have a transform, use :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_MeshLibrary_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshLibrary_method_clear>`

Efface la bibliothèque.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_create_item:

.. rst-class:: classref-method

|void| **create_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_create_item>`

Crée un nouvel article dans la bibliothèque avec l'identifiant donné.

Vous pouvez obtenir un identifiant inutilisé via :ref:`get_last_unused_item_id()<class_MeshLibrary_method_get_last_unused_item_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_find_item_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_item_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_find_item_by_name>`

Renvoie le premier élément avec le nom donné, ou ``-1`` si aucun élément n'est trouvé.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_category:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_item_category**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_category>`

Returns the category for a specific item ``id``. See also :ref:`set_item_category()<class_MeshLibrary_method_set_item_category>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_count**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_count>`

Returns the number of items present in the library.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_item_list**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_list>`

Renvoie la liste des identifiants d'élément à utiliser.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_item_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh>`

Renvoie le maillage de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_cast_shadow:

.. rst-class:: classref-method

:ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>` **get_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_cast_shadow>`

Renvoie le mode de projection des ombres de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_mesh_transform>`

Renvoie la transformation appliquée au maillage de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_item_name**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_name>`

Renvoie le nom de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_layers>`

Returns the item's navigation layers bitmask.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh>`

Renvoie le maillage de navigation de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_navigation_mesh_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_navigation_mesh_transform>`

Renvoie la transformation appliquée au maillage de navigation de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_preview:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_item_preview**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_preview>`

Lors de l'exécution dans l'éditeur, renvoie l'aperçu généré d'un élément (un rendu 3D en perspective isométrique). Lorsqu'utilisée dans un projet en cours d'exécution, renvoie l'aperçu défini manuellement de l'élément qui peut être défini en utilisant :ref:`set_item_preview()<class_MeshLibrary_method_set_item_preview>`. Renvoie une :ref:`Texture2D<class_Texture2D>` vide si aucun aperçu n'a été défini manuellement dans un projet en cours d'exécution.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_item_shapes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_item_shapes**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_item_shapes>`

Renvoie les formes de collision d'un objet.

Le tableau contient chaque :ref:`Shape3D<class_Shape3D>` suivie de sa :ref:`Transform3D<class_Transform3D>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_get_last_unused_item_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_last_unused_item_id**\ (\ ) |const| :ref:`🔗<class_MeshLibrary_method_get_last_unused_item_id>`

Obtient un identifiant inutilisé pour un nouvel élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_remove_item:

.. rst-class:: classref-method

|void| **remove_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_remove_item>`

Supprime l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_category:

.. rst-class:: classref-method

|void| **set_item_category**\ (\ id\: :ref:`int<class_int>`, category\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_category>`

Sets the ``category`` for a specific item ``id`` for organization in the :ref:`GridMap<class_GridMap>` editor. A category can include ``/`` as a delimiter to create subcategories.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh:

.. rst-class:: classref-method

|void| **set_item_mesh**\ (\ id\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh>`

Définit le maillage de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_cast_shadow:

.. rst-class:: classref-method

|void| **set_item_mesh_cast_shadow**\ (\ id\: :ref:`int<class_int>`, shadow_casting_setting\: :ref:`ShadowCastingSetting<enum_RenderingServer_ShadowCastingSetting>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_cast_shadow>`

Définit le mode de projection des ombres de l'élément à ``shadow_casting_setting``.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_mesh_transform**\ (\ id\: :ref:`int<class_int>`, mesh_transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_mesh_transform>`

Régle la transformation à appliquer au maillage de l'objet.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_name:

.. rst-class:: classref-method

|void| **set_item_name**\ (\ id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_name>`

Définit le nom de l'objet.

Ce nom est indiqué dans l'éditeur. Il peut également être utilisé pour retrouver l'élément par la suite en utilisant :ref:`find_item_by_name()<class_MeshLibrary_method_find_item_by_name>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_layers:

.. rst-class:: classref-method

|void| **set_item_navigation_layers**\ (\ id\: :ref:`int<class_int>`, navigation_layers\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_layers>`

Sets the item's navigation layers bitmask.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh>`

Définit le maillage de navigation de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_navigation_mesh_transform:

.. rst-class:: classref-method

|void| **set_item_navigation_mesh_transform**\ (\ id\: :ref:`int<class_int>`, navigation_mesh\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_navigation_mesh_transform>`

Définit la transformation appliquée au maillage de navigation de l'élément.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_preview:

.. rst-class:: classref-method

|void| **set_item_preview**\ (\ id\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_preview>`

Définit la texture pour l'icône d'aperçu de l'élément dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_MeshLibrary_method_set_item_shapes:

.. rst-class:: classref-method

|void| **set_item_shapes**\ (\ id\: :ref:`int<class_int>`, shapes\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_MeshLibrary_method_set_item_shapes>`

Définit les formes de collision d'un objet.

Le tableau doit être composé d'objets :ref:`Shape3D<class_Shape3D>`, chacun aussitôt suivi d'une :ref:`Transform3D<class_Transform3D>` qui lui sera appliqué. Pour les formes qui ne devraient pas avoir de transformation, utilisez :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
