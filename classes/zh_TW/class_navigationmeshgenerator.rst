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

該類負責建立和清除用作 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 內的 :ref:`NavigationMesh<class_NavigationMesh>` 資源的 3D 導覽網格。\ **NavigationMeshGenerator** 在 2D 中的用途非常有限，因為導覽網格烘焙過程需要 3D 節點型別和 3D 源幾何體來解析。

整個導覽網格的烘焙最好在單獨的執行緒中完成，因為所涉及的體素化、碰撞測試和網格最佳化步驟是非常緩慢且效能密集型的操作。

導覽網格的烘焙分成若干步進行，最終結果取決於 :ref:`NavigationMesh<class_NavigationMesh>` 資源的 3D 源幾何體和該資源的屬性。第一步是從根節點開始，並根據 :ref:`NavigationMesh<class_NavigationMesh>` 的屬性從 :ref:`SceneTree<class_SceneTree>` 收集所有有效的 3D 源幾何體節點。第二步會對所有收集的節點進行解析，以獲得其相關的 3D 幾何體資料，合併構造成一個 3D 網格。由於可解析的物件型別眾多，從普通的 :ref:`MeshInstance3D<class_MeshInstance3D>` 到 :ref:`CSGShape3D<class_CSGShape3D>` 再到各種 :ref:`CollisionObject3D<class_CollisionObject3D>`\ ，其中某些收集幾何資料的操作可能會觸發 :ref:`RenderingServer<class_RenderingServer>` 和 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 的同步。伺服器同步通常涉及 :ref:`Mutex<class_Mutex>` 鎖定以確保執行緒安全，這會對烘焙時間或影格率產生負面影響。可解析物件過多，以及與多執行緒伺服器之間的連續同步，都會大幅影響烘焙時間。而如果物件數量較少，但都是非常大而且複雜的物件，那麼就會在為伺服器準備資料上花費時間，這可能會明顯拖延下一影格渲染。一般而言，可解析物件的總數與它們各自的大小和複雜度之間應該達到平衡，防止出現影格率問題和超長的烘焙時間。合併後的網格後續會被交給 Recast 導航物件，通過在網格的包圍區域周邊建立體素世界，來測試適合 :ref:`NavigationMesh<class_NavigationMesh>` 代理屬性的可行走地形的源幾何體。

最終的導覽網格然後將被回傳並被儲存在 :ref:`NavigationMesh<class_NavigationMesh>` 中，用作 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 節點內的資源。

\ **注意：**\ 使用網格不僅定義可行走的表面的導航烘焙，而且定義障礙的導航烘焙，並不總會有效。在處理網格源幾何體時，導航烘焙沒有甚麼是幾何體“位於內部”的概念，這是有意為之的。根據目前的烘焙參數，一旦障礙網格足夠大，大到足以在內部容納一個導覽網格區域，則烘焙時將生成位於障礙源幾何體網格內部的導覽網格區域。

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

使用從 ``root_node`` 開始收集的源幾何圖形來烘焙 ``navigation_mesh``\ 。

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

\ **注意：**\ 從 :ref:`Mesh<class_Mesh>` 資源讀取資料陣列雖然很方便，但會對影格率造成負面影響。這些資料需要從 GPU 取得，卡住正在處理的 :ref:`RenderingServer<class_RenderingServer>`\ 。出於效能考量，請優先使用碰撞形狀或在程式碼中建立完整的資料陣列等方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
