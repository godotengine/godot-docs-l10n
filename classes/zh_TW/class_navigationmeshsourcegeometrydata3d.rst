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

向用於導覽網格烘焙的幾何體資料中新增一組頂點位置，以形成三角形面。對於每個面，陣列中必須有三個使用順時針纏繞順序的頂點位置。由於 :ref:`NavigationMesh<class_NavigationMesh>` 資源本身沒有變換，因此所有頂點位置都需要使用 ``xform`` 參數使用節點的變換進行偏移。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`

嚮導覽網格烘焙資料中新增 :ref:`Mesh<class_Mesh>` 資源的幾何體資料。網格中必須存在有效的三角形網格資料才會被使用。因為 :ref:`NavigationMesh<class_NavigationMesh>` 資源本身沒有變換，所有頂點位置都需要使用 ``xform`` 參數使用節點的變換進行偏移。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh_array:

.. rst-class:: classref-method

|void| **add_mesh_array**\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`

嚮導覽網格烘焙資料中新增一個 :ref:`Array<class_Array>`\ ，大小為 :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>`\ ，頂點資料位於索引 :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`\ ，索引資料位於索引 :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>`\ 。陣列中必須存在有效的三角形網格資料才會被使用。因為 :ref:`NavigationMesh<class_NavigationMesh>` 資源本身沒有變換，所有頂點位置都需要使用 ``xform`` 參數使用節點的變換進行偏移。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`

將投影的障礙物形狀新增到源幾何體。\ ``vertices`` 被視為投影在 xz 軸平面上，放置在全域 y 軸 ``elevation`` 處並按 ``height`` 擠壓。如果 ``carve`` 為 ``true``\ ，則雕刻的形狀將不會受到導覽網格烘焙過程的額外偏移（例如代理半徑）的影響。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_append_arrays:

.. rst-class:: classref-method

|void| **append_arrays**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`

將頂點陣列 ``vertices`` 和索引陣列 ``indices`` 追加到現有陣列的末尾。追加的索引會使用現有索引進行偏移。

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

清除所有投射的障礙物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_bounds>`

回傳覆蓋所有儲存幾何資料的軸對齊邊界框。邊界在呼叫該函式時計算，快取至幾何體發生後續變化。

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

將投影的障礙物作為字典的 :ref:`Array<class_Array>` 回傳。 每個 :ref:`Dictionary<class_Dictionary>` 包含以下條目：

- ``vertices`` - 一個 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ，定義投影形狀的輪廓點。

- ``elevation`` - 一個 :ref:`float<class_float>`\ ，定義 y 軸上的投影形狀放置。

- ``height`` - 一個 :ref:`float<class_float>`\ ，定義投影形狀沿 y 軸擠壓的程度。

- ``carve`` - 一個 :ref:`bool<class_bool>`\ ，定義障礙物如何影響導覽網格烘焙。 如果為 ``true``\ ，則投影形狀將不會受到附加偏移的影響，例如代理半徑。

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

將另一個 **NavigationMeshSourceGeometryData3D** 的幾何體資料新增到導覽網格烘焙資料中。

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

使用包含以下鍵值對的字典陣列設定投影障礙物：


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
