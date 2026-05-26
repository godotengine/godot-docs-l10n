:github_url: hide

.. _class_ArrayMesh:

ArrayMesh
=========

**Eredita:** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un tipo di :ref:`Mesh<class_Mesh>` che fornisce utilità per la costruzione di una superficie da più array.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un **ArrayMesh** serve per costruire una :ref:`Mesh<class_Mesh>` specificando gli attributi come più array.

L'esempio più basilare è la creazione di un unico triangolo:


.. tabs::

 .. code-tab:: gdscript

    var vertices = PackedVector3Array()
    vertices.push_back(Vector3(0, 1, 0))
    vertices.push_back(Vector3(1, 0, 0))
    vertices.push_back(Vector3(0, 0, 1))

    # Inizializza l'ArrayMesh.
    var arr_mesh = ArrayMesh.new()
    var arrays = []
    arrays.resize(Mesh.ARRAY_MAX)
    arrays[Mesh.ARRAY_VERTEX] = vertices

    # Crea la Mesh.
    arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
    var m = MeshInstance3D.new()
    m.mesh = arr_mesh

 .. code-tab:: csharp

    var vertices = new Vector3[]
    {
        new Vector3(0, 1, 0),
        new Vector3(1, 0, 0),
        new Vector3(0, 0, 1),
    };

    // Inizializza l'ArrayMesh.
    var arrMesh = new ArrayMesh();
    Godot.Collections.Array arrays = [];
    arrays.Resize((int)Mesh.ArrayType.Max);
    arrays[(int)Mesh.ArrayType.Vertex] = vertices;

    // Crea la Mesh.
    arrMesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, arrays);
    var m = new MeshInstance3D();
    m.Mesh = arrMesh;



Il :ref:`MeshInstance3D<class_MeshInstance3D>` è pronto per essere aggiunto al :ref:`SceneTree<class_SceneTree>` per essere mostrato.

Vedi anche :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`MeshDataTool<class_MeshDataTool>`, e :ref:`SurfaceTool<class_SurfaceTool>` per la generazione di geometria procedurale.

\ **Nota:** Godot utilizza l'`ordine di avvolgimento <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ in senso orario per le facce anteriori delle modalità di triangolo primitivo.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Geometria procedurale utilizzando ArrayMesh <../tutorials/3d/procedural_geometry/arraymesh>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` | :ref:`blend_shape_mode<class_ArrayMesh_property_blend_shape_mode>` | ``1``                      |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                         | :ref:`custom_aabb<class_ArrayMesh_property_custom_aabb>`           | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`               | :ref:`shadow_mesh<class_ArrayMesh_property_shadow_mesh>`           |                            |
   +-------------------------------------------------+--------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_blend_shape<class_ArrayMesh_method_add_blend_shape>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`add_surface_from_arrays<class_ArrayMesh_method_add_surface_from_arrays>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_blend_shapes<class_ArrayMesh_method_clear_blend_shapes>`\ (\ )                                                                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`clear_surfaces<class_ArrayMesh_method_clear_surfaces>`\ (\ )                                                                                                                                                                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_blend_shape_count<class_ArrayMesh_method_get_blend_shape_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                     | :ref:`get_blend_shape_name<class_ArrayMesh_method_get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                   | :ref:`lightmap_unwrap<class_ArrayMesh_method_lightmap_unwrap>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                       |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`regen_normal_maps<class_ArrayMesh_method_regen_normal_maps>`\ (\ )                                                                                                                                                                                                                                                                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_blend_shape_name<class_ArrayMesh_method_set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                                                                             |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_find_by_name<class_ArrayMesh_method_surface_find_by_name>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_index_len<class_ArrayMesh_method_surface_get_array_index_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`surface_get_array_len<class_ArrayMesh_method_surface_get_array_len>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] | :ref:`surface_get_format<class_ArrayMesh_method_surface_get_format>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`surface_get_name<class_ArrayMesh_method_surface_get_name>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`           | :ref:`surface_get_primitive_type<class_ArrayMesh_method_surface_get_primitive_type>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_remove<class_ArrayMesh_method_surface_remove>`\ (\ surf_idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_set_name<class_ArrayMesh_method_surface_set_name>`\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_attribute_region<class_ArrayMesh_method_surface_update_attribute_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_skin_region<class_ArrayMesh_method_surface_update_skin_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`surface_update_vertex_region<class_ArrayMesh_method_surface_update_vertex_region>`\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ArrayMesh_property_blend_shape_mode:

.. rst-class:: classref-property

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **blend_shape_mode** = ``1`` :ref:`🔗<class_ArrayMesh_property_blend_shape_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_shape_mode**\ (\ value\: :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>`\ )
- :ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **get_blend_shape_mode**\ (\ )

La modalità delle forme di fusione.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_ArrayMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Sovrascrive l':ref:`AABB<class_AABB>` con uno definito dall'utente per l'uso con il frustum culling. Particolarmente utile per evitare culling inaspettato quando si utilizza uno shader per scostare i vertici.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_property_shadow_mesh:

.. rst-class:: classref-property

:ref:`ArrayMesh<class_ArrayMesh>` **shadow_mesh** :ref:`🔗<class_ArrayMesh_property_shadow_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mesh**\ (\ value\: :ref:`ArrayMesh<class_ArrayMesh>`\ )
- :ref:`ArrayMesh<class_ArrayMesh>` **get_shadow_mesh**\ (\ )

Una mesh facoltativa che può essere utilizzata per renderizzare ombre e per il pre-passaggio di profondità. Può essere utilizzato per aumentare le prestazioni fornendo una mesh con vertici fusi e con solo i dati di posizione dei vertici (senza normali, UV, colori, ecc).

\ **Nota:** Questa mesh deve avere esattamente le stesse posizioni dei vertici della mesh di origine (compresi i LOD della mesh di origine, se presenti). Se le posizioni dei vertici differiscono, la mesh non verrà disegnata correttamente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ArrayMesh_method_add_blend_shape:

.. rst-class:: classref-method

|void| **add_blend_shape**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_add_blend_shape>`

Aggiunge il nome per una forma di fusione che sarà aggiunta con :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`. Deve essere chiamato prima che la superficie sia aggiunta.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_add_surface_from_arrays:

.. rst-class:: classref-method

|void| **add_surface_from_arrays**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, arrays\: :ref:`Array<class_Array>`, blend_shapes\: :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] = [], lods\: :ref:`Dictionary<class_Dictionary>` = {}, flags\: |bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] = 0\ ) :ref:`🔗<class_ArrayMesh_method_add_surface_from_arrays>`

Crea una nuova superficie. :ref:`Mesh.get_surface_count()<class_Mesh_method_get_surface_count>` diventerà il ``surf_idx`` per questa nuova superficie.

Le superfici sono renderizzate tramite un ``primitive``, che può essere uno qualsiasi dei valori definiti in :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`.

L'argomento ``arrays`` è un array di array. Ciascuno degli elementi :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` contiene un array con alcuni dei dati della mesh per questa superficie, come descritto dal membro corrispondente di :ref:`ArrayType<enum_Mesh_ArrayType>` o ``null`` se non è utilizzato dalla superficie. Ad esempio, ``arrays[0]`` è l'array dei vertici. Il primo sottoarray di vertici è sempre obbligatorio; gli altri sono facoltativi. L'aggiunta di un array di indici mette questa superficie in "modalità indice", dove i vertici e gli altri array diventano le sorgenti di dati e l'array di indici definisce l'ordine dei vertici. Tutti i sottoarray devono avere la stessa lunghezza dell'array dei vertici (o essere un multiplo esatto della lunghezza dell'array dei vertici, quando più elementi di un sottoarray corrispondono a un singolo vertice) oppure essere vuoti, ad eccezione di :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`, se utilizzato.

L'argomento ``blend_shapes`` è un array di dati dei vertici per ogni forma di fusione. Ogni elemento è un array con la stessa struttura di ``arrays``, ma :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` e :ref:`Mesh.ARRAY_TANGENT<class_Mesh_constant_ARRAY_TANGENT>` sono impostati solo se sono impostati in ``arrays`` e tutte le altre voci sono ``null``.

L'argomento ``lods`` è un dizionario con chiavi :ref:`float<class_float>` e valori :ref:`PackedInt32Array<class_PackedInt32Array>`. Ogni voce nel dizionario rappresenta un livello LOD della superficie, dove il valore è l'array :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` da utilizzare per il livello LOD e la chiave è approssimativamente proporzionale alla distanza a cui vengono utilizzate le statistiche LOD. Ad esempio, aumentando la chiave di un LOD aumenta anche la distanza che gli oggetti devono avere dalla telecamera prima che il LOD venga utilizzato.

L'argomento ``flags`` è l'OR bit a bit di, a seconda delle esigenze: un valore di :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` spostato a sinistra di ``ARRAY_FORMAT_CUSTOMn_SHIFT`` per ogni canale personalizzato in uso, :ref:`Mesh.ARRAY_FLAG_USE_DYNAMIC_UPDATE<class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE>`, :ref:`Mesh.ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` o :ref:`Mesh.ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY<class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY>`.

\ **Nota:** Quando si utilizzano indici, si consiglia di usare solo punti, linee o triangoli.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_blend_shapes:

.. rst-class:: classref-method

|void| **clear_blend_shapes**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_blend_shapes>`

Rimuove tutte le forme di fusione da questo **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ArrayMesh_method_clear_surfaces>`

Rimuove tutte le superfici da questo **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_shape_count**\ (\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_count>`

Restituisce il numero di forme di fusione contenute nel **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_get_blend_shape_name>`

Restituisce il nome della forma di fusione a questo indice.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_lightmap_unwrap:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **lightmap_unwrap**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, texel_size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ArrayMesh_method_lightmap_unwrap>`

Effettua un unwrap degli UV sull'**ArrayMesh** per preparare la mesh per il lightmapping.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_regen_normal_maps:

.. rst-class:: classref-method

|void| **regen_normal_maps**\ (\ ) :ref:`🔗<class_ArrayMesh_method_regen_normal_maps>`

Rigenera le tangenti per ciascuna delle superfici di **ArrayMesh**.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_set_blend_shape_name:

.. rst-class:: classref-method

|void| **set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_ArrayMesh_method_set_blend_shape_name>`

Imposta il nome della forma di fusione in questo indice.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_find_by_name:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_find_by_name**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_find_by_name>`

Restituisce l'indice della prima superficie con questo nome contenuta in questo **ArrayMesh**. Se non viene trovato, viene restituito -1.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_index_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_index_len>`

Restituisce la lunghezza in indici dell'array di indici nella superficie richiesta (vedi :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **surface_get_array_len**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_array_len>`

Restituisce la lunghezza in vertici dell'array di vertici nella superficie richiesta (vedi :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_format:

.. rst-class:: classref-method

|bitfield|\[:ref:`ArrayFormat<enum_Mesh_ArrayFormat>`\] **surface_get_format**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_format>`

Restituisce la maschera di formato della superficie richiesta (vedi :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **surface_get_name**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_name>`

Ottiene il nome assegnato a questa superficie.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **surface_get_primitive_type**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ArrayMesh_method_surface_get_primitive_type>`

Restituisce il tipo di primitiva della superficie richiesta (vedi :ref:`add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_remove:

.. rst-class:: classref-method

|void| **surface_remove**\ (\ surf_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_remove>`

Rimuove la superficie con l'indice specificato dalla mesh, spostando le superfici con gli indici maggiori verso il basso di uno.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_set_name:

.. rst-class:: classref-method

|void| **surface_set_name**\ (\ surf_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_set_name>`

Imposta un nome per una determinata superficie.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_attribute_region:

.. rst-class:: classref-method

|void| **surface_update_attribute_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_attribute_region>`

Updates the attribute buffer of this mesh's surface with the given ``data``. The expected data per attribute is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_attribute_stride()<class_RenderingServer_method_mesh_surface_get_format_attribute_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each attribute.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of attribute locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_skin_region:

.. rst-class:: classref-method

|void| **surface_update_skin_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_skin_region>`

Updates the skin buffer of this mesh's surface with the given ``data``. The expected data per skin is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_skin_stride()<class_RenderingServer_method_mesh_surface_get_format_skin_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each skin.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of skin locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. rst-class:: classref-item-separator

----

.. _class_ArrayMesh_method_surface_update_vertex_region:

.. rst-class:: classref-method

|void| **surface_update_vertex_region**\ (\ surf_idx\: :ref:`int<class_int>`, offset\: :ref:`int<class_int>`, data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ArrayMesh_method_surface_update_vertex_region>`

Updates the vertex buffer of this mesh's surface with the given ``data``. The expected data per vertex is 12 or 8 bytes (4 bytes per float, 2 floats per :ref:`Vector2<class_Vector2>`, and 3 floats per :ref:`Vector3<class_Vector3>`) depending on if the mesh is using :ref:`Vector3<class_Vector3>` or :ref:`Vector2<class_Vector2>` vertices. This value can be determined with :ref:`RenderingServer.mesh_surface_get_format_vertex_stride()<class_RenderingServer_method_mesh_surface_get_format_vertex_stride>`.

The starting point of the updates can be changed with ``offset``. The value of ``offset`` should be a multiple of 12 bytes in most cases to align to each vertex.

A :ref:`PackedVector3Array<class_PackedVector3Array>` of vertex locations can be converted into a :ref:`PackedByteArray<class_PackedByteArray>` using :ref:`PackedVector3Array.to_byte_array()<class_PackedVector3Array_method_to_byte_array>` for use in ``data``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
