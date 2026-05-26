:github_url: hide

.. _class_NavigationMeshSourceGeometryData3D:

NavigationMeshSourceGeometryData3D
==================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contenedor para los datos de geometría de origen analizados utilizados en el procesado de la malla de navegación.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contenedor para los datos de geometría de origen analizados utilizados en el procesado de la malla de navegación.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_faces<class_NavigationMeshSourceGeometryData3D_method_add_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_mesh<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_mesh_array<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_projected_obstruction<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_arrays<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationMeshSourceGeometryData3D_method_clear>`\ (\ )                                                                                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions>`\ (\ )                                                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`get_bounds<class_NavigationMeshSourceGeometryData3D_method_get_bounds>`\ (\ )                                                                                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_NavigationMeshSourceGeometryData3D_method_get_indices>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`get_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions>`\ (\ ) |const|                                                                                                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_vertices<class_NavigationMeshSourceGeometryData3D_method_get_vertices>`\ (\ ) |const|                                                                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_data<class_NavigationMeshSourceGeometryData3D_method_has_data>`\ (\ )                                                                                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`merge<class_NavigationMeshSourceGeometryData3D_method_merge>`\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`\ )                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_indices<class_NavigationMeshSourceGeometryData3D_method_set_indices>`\ (\ indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                                                                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions>`\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ )                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationMeshSourceGeometryData3D_method_set_vertices>`\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_NavigationMeshSourceGeometryData3D_method_add_faces:

.. rst-class:: classref-method

|void| **add_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_faces>`

Añade un array de posiciones de vértices a los datos de geometría para el baking de mallas de navegación para formar caras trianguladas. Para cada cara, el array debe tener tres posiciones de vértice en orden de bobinado horario. Dado que los recursos :ref:`NavigationMesh<class_NavigationMesh>` no tienen transformación, todas las posiciones de los vértices deben ser compensadas por la transformación del nodo usando ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`

Añade los datos de geometría de un recurso :ref:`Mesh<class_Mesh>` a los datos de baking de la malla de navegación. La malla debe tener datos de malla triangulada válidos para ser considerada. Dado que los recursos :ref:`NavigationMesh<class_NavigationMesh>` no tienen transformación, todas las posiciones de los vértices deben ser compensadas por la transformación del nodo usando ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh_array:

.. rst-class:: classref-method

|void| **add_mesh_array**\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`

Añade un :ref:`Array<class_Array>` del tamaño de :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` y con vértices en el índice :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` e índices en el índice :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` a los datos de baking de la malla de navegación. El array debe tener datos de malla triangulada válidos para ser considerado. Dado que los recursos :ref:`NavigationMesh<class_NavigationMesh>` no tienen transformación, todas las posiciones de los vértices deben ser compensadas por la transformación del nodo usando ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`

Añade una forma de obstrucción proyectada a la geometría de origen. Los ``vertices`` se consideran proyectados en un plano de ejes xz, colocados en la posición ``elevation`` del eje Y global y extruidos por ``height``. Si ``carve`` es ``true``, la forma tallada no se verá afectada por desplazamientos adicionales (por ejemplo, el radio del agente) del proceso de baking de la malla de navegación.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_append_arrays:

.. rst-class:: classref-method

|void| **append_arrays**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`

Añade arrays de ``vertices`` e ``indices`` al final de los arrays existentes. Añade el índice existente como desplazamiento a los índices añadidos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear>`

Limpia los datos internos.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions>`

Limpia todas las obstrucciones proyectadas.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_bounds>`

Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_indices>`

Devuelve el array de índices de datos de geometría de origen analizados.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions>`

Returns the projected obstructions as an :ref:`Array<class_Array>` of dictionaries. Each :ref:`Dictionary<class_Dictionary>` contains the following entries:

- ``vertices`` - A :ref:`PackedFloat32Array<class_PackedFloat32Array>` that defines the outline points of the projected shape.

- ``elevation`` - A :ref:`float<class_float>` that defines the projected shape placement on the y-axis.

- ``height`` - A :ref:`float<class_float>` that defines how much the projected shape is extruded along the y-axis.

- ``carve`` - A :ref:`bool<class_bool>` that defines how the obstacle affects the navigation mesh baking. If ``true`` the projected shape will not be affected by addition offsets, e.g. agent radius.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_vertices>`

Devuelve el array de vértices de datos de geometría de origen analizados.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_has_data>`

Devuelve ``true`` cuando existen datos de geometría de origen analizados.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_merge>`

Adds the geometry data of another **NavigationMeshSourceGeometryData3D** to the navigation mesh baking data.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_indices:

.. rst-class:: classref-method

|void| **set_indices**\ (\ indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_indices>`

Sets the parsed source geometry data indices. The indices need to be matched with appropriated vertices.

\ **Warning:** Inappropriate data can crash the baking process of the involved third-party libraries.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions>`

Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "elevation" : float
    "height" : float
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_vertices>`

Sets the parsed source geometry data vertices. The vertices need to be matched with appropriated indices.

\ **Warning:** Inappropriate data can crash the baking process of the involved third-party libraries.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
