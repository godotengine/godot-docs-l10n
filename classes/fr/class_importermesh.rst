:github_url: hide

.. _class_ImporterMesh:

ImporterMesh
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une :ref:`Resource<class_Resource>` qui contient une géométrie à base d'un tableau de sommets durant le processus d'import.

.. rst-class:: classref-introduction-group

Description
-----------

ImporterMesh is a type of :ref:`Resource<class_Resource>` analogous to :ref:`ArrayMesh<class_ArrayMesh>`. It contains vertex array-based geometry, divided in *surfaces*. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.

Unlike its runtime counterpart, **ImporterMesh** contains mesh data before various import steps, such as LOD and shadow mesh generation, have taken place. Modify surface data by calling :ref:`clear()<class_ImporterMesh_method_clear>`, followed by :ref:`add_surface()<class_ImporterMesh_method_add_surface>` for each surface.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_blend_shape<class_ImporterMesh_method_add_blend_shape>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_surface<class_ImporterMesh_method_add_surface>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_ImporterMesh_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`from_mesh<class_ImporterMesh_method_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static|                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`generate_lods<class_ImporterMesh_method_generate_lods>`\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_blend_shape_count<class_ImporterMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`get_blend_shape_mode<class_ImporterMesh_method_get_blend_shape_mode>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_blend_shape_name<class_ImporterMesh_method_get_blend_shape_name>`\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                 | :ref:`get_lightmap_size_hint<class_ImporterMesh_method_get_lightmap_size_hint>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`get_mesh<class_ImporterMesh_method_get_mesh>`\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ )                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_arrays<class_ImporterMesh_method_get_surface_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                       | :ref:`get_surface_blend_shape_arrays<class_ImporterMesh_method_get_surface_blend_shape_arrays>`\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_count<class_ImporterMesh_method_get_surface_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_format<class_ImporterMesh_method_get_surface_format>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_surface_lod_count<class_ImporterMesh_method_get_surface_lod_count>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_surface_lod_indices<class_ImporterMesh_method_get_surface_lod_indices>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`get_surface_lod_size<class_ImporterMesh_method_get_surface_lod_size>`\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`get_surface_material<class_ImporterMesh_method_get_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                     | :ref:`get_surface_name<class_ImporterMesh_method_get_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`   | :ref:`get_surface_primitive_type<class_ImporterMesh_method_get_surface_primitive_type>`\ (\ surface_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>`         | :ref:`merge_importer_meshes<class_ImporterMesh_method_merge_importer_meshes>`\ (\ importer_meshes\: :ref:`Array<class_Array>`\[:ref:`ImporterMesh<class_ImporterMesh>`\], relative_transforms\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], deduplicate_surfaces\: :ref:`bool<class_bool>` = true\ ) |static|                                                                                      |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_blend_shape_mode<class_ImporterMesh_method_set_blend_shape_mode>`\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_lightmap_size_hint<class_ImporterMesh_method_set_lightmap_size_hint>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_material<class_ImporterMesh_method_set_surface_material>`\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_surface_name<class_ImporterMesh_method_set_surface_name>`\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                         |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImporterMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_add_blend_shape>`

Ajoute le nom d'une blend shape qui sera ajoutée avec :ref:`add_surface()<class_ImporterMesh_method_add_surface>`. Doit être appelée avant l'ajout de la surface.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_add_surface:

.. rst-class:: classref-method

|void| **add_surface**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, material\: :ref:`Material<class_Material>` = null, name\: :ref:`String<class_String>` = "", flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ImporterMesh_method_add_surface>`

Crée une nouvelle surface. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` deviendra le ``surf_idx`` pour cette nouvelle surface.

Les surfaces sont créées pour être rendues en utilisant une ``primitive``, qui peut être l'une des valeurs définies dans :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

L'argument ``arrays`` est un tableau de tableaux. Chacune des :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` éléments contient un tableau contenant certaines données du maillage pour cette surface, comme le décrit le membre correspondant de :ref:`ArrayType<enum_Mesh_ArrayType>` ou ``null`` s'il n'est pas utilisé par la surface. Par exemple, ``arrays[0]`` est le tableau des sommets. Ce premier sous-tableau de sommets est toujours nécessaire ; les autres sont optionnels. L'ajout d'un tableau d'index met cette surface en "mode index" où les sommets et les autres tableaux deviennent les sources de données et le tableau d'index définit l'ordre des sommets. Tous les sous-tableaux doivent avoir la même longueur que le tableau des sommets (ou être un multiple exact de la longueur du tableau des sommets, lorsque plusieurs éléments d'un sous-réseau correspondent à un seul sommet) ou être vides, à l'exception de :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` s'il est utilisé.

L'argument ``blend_shapes`` est un tableau de données sommet pour chaque blend shape. Chaque élément est un tableau de la même structure que ``arrays``, mais :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>`, et :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` sont définis si et seulement si ils sont définis dans ``arrays`` et toutes les autres entrées sont ``null``.

L'argument ``lods`` est un dictionnaire avec des clés :ref:`float<class_float>` et des valeurs :ref:`PackedInt32Array<class_PackedInt32Array>`. Chaque entrée dans le dictionnaire représente un niveau de LOD de la surface, où la valeur est le tableau :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` à utiliser pour le niveau de LOD et la clé est grossièrement proportionnelle à la distance à laquelle les statistiques de LOD sont utilisées. Par exemple, augmenter la clé d'un LOD augmente également la distance à laquelle les objets doivent être de la caméra avant que le LOD soit utilisé.

L'argument ``flags`` est le OU par bits de, comme requis : Une valeur de :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` décalée à gauche par ``ARRAY_FORMAT_CUSTOMn_SHIFT`` pour chaque canal personnalisé utilisé, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>`, ou :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Note :** Lors de l'utilisation d'indices, il est recommandé d'utiliser uniquement des points, des lignes ou des triangles.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ImporterMesh_method_clear>`

Retire toutes les surfaces et blend shapes de ce **ImporterMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_from_mesh:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) |static| :ref:`🔗<class_ImporterMesh_method_from_mesh>`

Converts the given :ref:`Mesh<class_Mesh>` into an **ImporterMesh** by copying all its surfaces, blend shapes, materials, and metadata into a new **ImporterMesh** object.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_generate_lods:

.. rst-class:: classref-method

|void| **generate_lods**\ (\ normal_merge_angle\: :ref:`float<class_float>`, normal_split_angle\: :ref:`float<class_float>`, bone_transform_array\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_ImporterMesh_method_generate_lods>`

Generates all lods for this ImporterMesh.

\ ``normal_merge_angle`` is in degrees and used in the same way as the importer settings in ``lods``.

\ ``normal_split_angle`` is not used and only remains for compatibility with older versions of the API.

The number of generated lods can be accessed using :ref:`get_surface_lod_count()<class_ImporterMesh_method_get_surface_lod_count>`, and each LOD is available in :ref:`get_surface_lod_size()<class_ImporterMesh_method_get_surface_lod_size>` and :ref:`get_surface_lod_indices()<class_ImporterMesh_method_get_surface_lod_indices>`.

\ ``bone_transform_array`` is an :ref:`Array<class_Array>` which can be either empty or contain :ref:`Transform3D<class_Transform3D>`\ s which, for each of the mesh's bone IDs, will apply mesh skinning when generating the LOD mesh variations. This is usually used to account for discrepancies in scale between the mesh itself and its skinning data.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_count>`

Renvoie le nombre de blend shapes que le maillage contient.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_mode:

.. rst-class:: classref-method

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_mode>`

Renvoie le mode de blend shape pour ce Mesh.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_blend_shape_name**\ (\ blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_blend_shape_name>`

Renvoie le nom de la blend shape à cette position.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_lightmap_size_hint:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_lightmap_size_hint>`

Returns the size hint of this mesh for lightmap-unwrapping in UV-space.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_mesh**\ (\ base_mesh\: :ref:`ArrayMesh<class_ArrayMesh>` = null\ ) :ref:`🔗<class_ImporterMesh_method_get_mesh>`

Returns the mesh data represented by this **ImporterMesh** as a usable :ref:`ArrayMesh<class_ArrayMesh>`.

This method caches the returned mesh, and subsequent calls will return the cached data until :ref:`clear()<class_ImporterMesh_method_clear>` is called.

If not yet cached and ``base_mesh`` is provided, ``base_mesh`` will be used and mutated.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_arrays**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_arrays>`

Renvoie les tableaux pour les sommets, les normales, les UV, etc. qui composent la surface demandée. Voir :ref:`add_surface()<class_ImporterMesh_method_add_surface>`.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_surface_blend_shape_arrays**\ (\ surface_idx\: :ref:`int<class_int>`, blend_shape_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_blend_shape_arrays>`

Returns a single set of blend shape arrays for the requested blend shape index for a surface.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_count>`

Renvoie le nombre de surfaces que le maillage contient.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_format**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_format>`

Renvoie le format de la surface que le maillage contient.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_lod_count**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_count>`

Renvoie le nombre de lods que le maillage contient sur une surface donnée.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_surface_lod_indices**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_indices>`

Renvoie le buffer d'index d'un lod pour une surface.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_lod_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_surface_lod_size**\ (\ surface_idx\: :ref:`int<class_int>`, lod_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_lod_size>`

Renvoie le rapport d'écran qui active un lod pour une surface.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_material>`

Renvoie un :ref:`Material<class_Material>` pour une surface donnée. Le rendu de la surface est fait en utilisant ce matériau.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ImporterMesh_method_get_surface_name>`

Obtient le nom assigné à cette surface.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_get_surface_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **get_surface_primitive_type**\ (\ surface_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImporterMesh_method_get_surface_primitive_type>`

Renvoie le type de primitive de la surface demandée (voir :ref:`add_surface()<class_ImporterMesh_method_add_surface>`).

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_merge_importer_meshes:

.. rst-class:: classref-method

:ref:`ImporterMesh<class_ImporterMesh>` **merge_importer_meshes**\ (\ importer_meshes\: :ref:`Array<class_Array>`\[:ref:`ImporterMesh<class_ImporterMesh>`\], relative_transforms\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], deduplicate_surfaces\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_ImporterMesh_method_merge_importer_meshes>`

Merges multiple **ImporterMesh**\ es into a single **ImporterMesh**. Each input mesh is transformed by the corresponding :ref:`Transform3D<class_Transform3D>` in the ``relative_transforms`` array, which must be the same size as ``importer_meshes``. Negative scales are supported, and the winding order in the mesh data will be corrected to account for this.

If ``deduplicate_surfaces`` is ``true`` and multiple meshes have surfaces with the same names and formats, the surfaces will be merged together when the meshes are merged, and will use the material from the first matching surface. This is useful for reducing the number of surfaces in the resulting mesh, and avoids duplicating materials. Surfaces with bone weights will never be deduplicated. If ``deduplicate_surfaces`` is ``false``, the surfaces will always be kept separate, and will be given unique names.

\ **Warning:** Blend shapes and LODs are not supported and will be discarded. Do not use this function to discard blend shapes and LODs, as support for these may be added in the future.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_blend_shape_mode:

.. rst-class:: classref-method

|void| **set_blend_shape_mode**\ (\ mode\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ ) :ref:`🔗<class_ImporterMesh_method_set_blend_shape_mode>`

Définit le mode de blend shape.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_lightmap_size_hint:

.. rst-class:: classref-method

|void| **set_lightmap_size_hint**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImporterMesh_method_set_lightmap_size_hint>`

Sets the size hint of this mesh for lightmap-unwrapping in UV-space.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_material:

.. rst-class:: classref-method

|void| **set_surface_material**\ (\ surface_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_material>`

Définit un :ref:`Material<class_Material>` pour une surface donnée. Le rendu de la surface sera faite utilisant ce matériau.

.. rst-class:: classref-item-separator

----

.. _class_ImporterMesh_method_set_surface_name:

.. rst-class:: classref-method

|void| **set_surface_name**\ (\ surface_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ImporterMesh_method_set_surface_name>`

Définit le nom donné à cette surface.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
