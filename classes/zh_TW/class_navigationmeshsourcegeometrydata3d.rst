:github_url: hide

.. _class_NavigationMeshSourceGeometryData3D:

NavigationMeshSourceGeometryData3D
==================================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放解析所得的源幾何體資料的容器，用於導覽網格的烘焙。

.. rst-class:: classref-introduction-group

說明
----

存放解析所得的源幾何體資料的容器，用於導覽網格的烘焙。

.. rst-class:: classref-reftable-group

方法
----

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

方法說明
--------

.. _class_NavigationMeshSourceGeometryData3D_method_add_faces:

.. rst-class:: classref-method

|void| **add_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_faces>`

Adds an array of vertex positions to the geometry data for navigation mesh baking to form triangulated faces. For each face the array must have three vertex positions in clockwise winding order. Since :ref:`NavigationMesh<class_NavigationMesh>` resources have no transform, all vertex positions need to be offset by the node's transform using ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`

Adds the geometry data of a :ref:`Mesh<class_Mesh>` resource to the navigation mesh baking data. The mesh must have valid triangulated mesh data to be considered. Since :ref:`NavigationMesh<class_NavigationMesh>` resources have no transform, all vertex positions need to be offset by the node's transform using ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh_array:

.. rst-class:: classref-method

|void| **add_mesh_array**\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`

Adds an :ref:`Array<class_Array>` the size of :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` and with vertices at index :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` and indices at index :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` to the navigation mesh baking data. The array must have valid triangulated mesh data to be considered. Since :ref:`NavigationMesh<class_NavigationMesh>` resources have no transform, all vertex positions need to be offset by the node's transform using ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`

Adds a projected obstruction shape to the source geometry. The ``vertices`` are considered projected on an xz-axes plane, placed at the global y-axis ``elevation`` and extruded by ``height``. If ``carve`` is ``true`` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_append_arrays:

.. rst-class:: classref-method

|void| **append_arrays**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`

Appends arrays of ``vertices`` and ``indices`` at the end of the existing arrays. Adds the existing index as an offset to the appended indices.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear>`

清除內部資料。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions>`

Clears all projected obstructions.

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

返回解析得到的源幾何體資料索引資料。

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

返回解析得到的源幾何體資料頂點資料。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_has_data>`

如果存在解析得到的源幾何體資料，則返回 **true**\ 。

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

設定解析得到的源幾何體資料索引。索引需要與正確的頂點相配對。

\ **警告：**\ 資料不正確會導致相關協力廠商庫在烘焙過程中當機。

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

設定解析得到的源幾何體資料頂點。頂點需要與正確的索引相配對。

\ **警告：**\ 資料不正確會導致相關協力廠商庫在烘焙過程中當機。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
