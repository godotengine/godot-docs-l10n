:github_url: hide

.. _class_NavigationMeshGenerator:

NavigationMeshGenerator
=======================

**已棄用：** This class may be changed or removed in future versions.

**繼承：** :ref:`Object<class_Object>`

對導覽網格進行建立和清理的輔助類。

.. rst-class:: classref-introduction-group

說明
----

This class is responsible for creating and clearing 3D navigation meshes used as :ref:`NavigationMesh<class_NavigationMesh>` resources inside :ref:`NavigationRegion3D<class_NavigationRegion3D>`. The **NavigationMeshGenerator** has very limited to no use for 2D as the navigation mesh baking process expects 3D node types and 3D source geometry to parse.

The entire navigation mesh baking is best done in a separate thread as the voxelization, collision tests and mesh optimization steps involved are very slow and performance-intensive operations.

Navigation mesh baking happens in multiple steps and the result depends on 3D source geometry and properties of the :ref:`NavigationMesh<class_NavigationMesh>` resource. In the first step, starting from a root node and depending on :ref:`NavigationMesh<class_NavigationMesh>` properties all valid 3D source geometry nodes are collected from the :ref:`SceneTree<class_SceneTree>`. Second, all collected nodes are parsed for their relevant 3D geometry data and a combined 3D mesh is build. Due to the many different types of parsable objects, from normal :ref:`MeshInstance3D<class_MeshInstance3D>`\ s to :ref:`CSGShape3D<class_CSGShape3D>`\ s or various :ref:`CollisionObject3D<class_CollisionObject3D>`\ s, some operations to collect geometry data can trigger :ref:`RenderingServer<class_RenderingServer>` and :ref:`PhysicsServer3D<class_PhysicsServer3D>` synchronizations. Server synchronization can have a negative effect on baking time or framerate as it often involves :ref:`Mutex<class_Mutex>` locking for thread security. Many parsable objects and the continuous synchronization with other threaded Servers can increase the baking time significantly. On the other hand only a few but very large and complex objects will take some time to prepare for the Servers which can noticeably stall the next frame render. As a general rule the total number of parsable objects and their individual size and complexity should be balanced to avoid framerate issues or very long baking times. The combined mesh is then passed to the Recast Navigation Object to test the source geometry for walkable terrain suitable to :ref:`NavigationMesh<class_NavigationMesh>` agent properties by creating a voxel world around the meshes bounding area.

The finalized navigation mesh is then returned and stored inside the :ref:`NavigationMesh<class_NavigationMesh>` for use as a resource inside :ref:`NavigationRegion3D<class_NavigationRegion3D>` nodes.

\ **Note:** Using meshes to not only define walkable surfaces but also obstruct navigation baking does not always work. The navigation baking has no concept of what is a geometry "inside" when dealing with mesh source geometry and this is intentional. Depending on current baking parameters, as soon as the obstructing mesh is large enough to fit a navigation mesh area inside, the baking will generate navigation mesh areas that are inside the obstructing source geometry mesh.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake<class_NavigationMeshGenerator_method_bake>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, root_node\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`bake_from_source_geometry_data<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ )                              |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`clear<class_NavigationMeshGenerator_method_clear>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ )                                                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`parse_source_geometry_data<class_NavigationMeshGenerator_method_parse_source_geometry_data>`\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, root_node\: :ref:`Node<class_Node>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationMeshGenerator_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, root_node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake>`

**已棄用：** This method is deprecated due to core threading changes. To upgrade existing code, first create a :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>` resource. Use this resource with :ref:`parse_source_geometry_data()<class_NavigationMeshGenerator_method_parse_source_geometry_data>` to parse the :ref:`SceneTree<class_SceneTree>` for nodes that should contribute to the navigation mesh baking. The :ref:`SceneTree<class_SceneTree>` parsing needs to happen on the main thread. After the parsing is finished use the resource with :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>` to bake a navigation mesh.

Bakes the ``navigation_mesh`` with source geometry collected starting from the ``root_node``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_bake_from_source_geometry_data:

.. rst-class:: classref-method

|void| **bake_from_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`

使用 ``source_geometry_data`` 中提供的資料對 ``navigation_mesh`` 進行烘焙。烘焙過程結束後，會呼叫可選的 ``callback``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_clear>`

從提供的 ``navigation_mesh`` 資源中移除所有多邊形和頂點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_parse_source_geometry_data:

.. rst-class:: classref-method

|void| **parse_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, root_node\: :ref:`Node<class_Node>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_parse_source_geometry_data>`

根據 ``navigation_mesh`` 的屬性解析 :ref:`SceneTree<class_SceneTree>` 中的源幾何體。會使用解析的結果對提供的 ``source_geometry_data`` 資源進行更新。後續可以在使用 :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>` 烘焙導覽網格時使用該資源。解析過程完成後，會呼叫可選的 ``callback``\ 。

\ **注意：**\ 因為 SceneTree 並不是執行緒安全的，所以這個函式需要在主執行緒執行或使用延遲呼叫。

\ **注意：**\ 從 :ref:`Mesh<class_Mesh>` 資源讀取資料陣列雖然很方便，但會對影格率造成負面影響。這些資料需要從 GPU 獲取，卡住正在處理的 :ref:`RenderingServer<class_RenderingServer>`\ 。出於性能考量，請優先使用碰撞形狀或在程式碼中建立完整的資料陣列等方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
