:github_url: hide

.. _class_NavigationMeshGenerator:

NavigationMeshGenerator
=======================

**已弃用：** This class may be changed or removed in future versions.

**继承：** :ref:`Object<class_Object>`

对导航网格进行创建和清理的辅助类。

.. rst-class:: classref-introduction-group

描述
----

该类负责创建和清除用作 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 内的 :ref:`NavigationMesh<class_NavigationMesh>` 资源的 3D 导航网格。\ **NavigationMeshGenerator** 在 2D 中的用途非常有限，因为导航网格烘焙过程需要 3D 节点类型和 3D 源几何体来解析。

整个导航网格的烘焙最好在单独的线程中完成，因为所涉及的体素化、碰撞测试和网格优化步骤是非常缓慢且性能密集型的操作。

导航网格的烘焙分成若干步进行，最终结果取决于 :ref:`NavigationMesh<class_NavigationMesh>` 资源的 3D 源几何体和该资源的属性。第一步是从根节点开始，并根据 :ref:`NavigationMesh<class_NavigationMesh>` 的属性从 :ref:`SceneTree<class_SceneTree>` 收集所有有效的 3D 源几何体节点。第二步会对所有收集的节点进行解析，以获得其相关的 3D 几何体数据，合并构造成一个 3D 网格。由于可解析的对象类型众多，从普通的 :ref:`MeshInstance3D<class_MeshInstance3D>` 到 :ref:`CSGShape3D<class_CSGShape3D>` 再到各种 :ref:`CollisionObject3D<class_CollisionObject3D>`\ ，其中某些收集几何数据的操作可能会触发 :ref:`RenderingServer<class_RenderingServer>` 和 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 的同步。服务器同步通常涉及 :ref:`Mutex<class_Mutex>` 锁定以确保线程安全，这会对烘焙时间或帧率产生负面影响。可解析对象过多，以及与多线程服务器之间的连续同步，都会大幅影响烘焙时间。而如果对象数量较少，但都是非常大而且复杂的对象，那么就会在为服务器准备数据上花费时间，这可能会明显拖延下一帧渲染。一般而言，可解析对象的总数与它们各自的大小和复杂度之间应该达到平衡，防止出现帧率问题和超长的烘焙时间。合并后的网格后续会被交给 Recast 导航对象，通过在网格的包围区域周边创建体素世界，来测试适合 :ref:`NavigationMesh<class_NavigationMesh>` 代理属性的可行走地形的源几何体。

最终的导航网格然后将被返回并被存储在 :ref:`NavigationMesh<class_NavigationMesh>` 中，用作 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 节点内的资源。

\ **注意：**\ 使用网格不仅定义可行走的表面的导航烘焙，而且定义障碍的导航烘焙，并不总会有效。在处理网格源几何体时，导航烘焙没有什么是几何体“位于内部”的概念，这是有意为之的。根据当前的烘焙参数，一旦障碍网格足够大，大到足以在内部容纳一个导航网格区域，则烘焙时将生成位于障碍源几何体网格内部的导航网格区域。

.. rst-class:: classref-introduction-group

教程
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

方法说明
--------

.. _class_NavigationMeshGenerator_method_bake:

.. rst-class:: classref-method

|void| **bake**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, root_node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake>`

**已弃用：** This method is deprecated due to core threading changes. To upgrade existing code, first create a :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>` resource. Use this resource with :ref:`parse_source_geometry_data()<class_NavigationMeshGenerator_method_parse_source_geometry_data>` to parse the :ref:`SceneTree<class_SceneTree>` for nodes that should contribute to the navigation mesh baking. The :ref:`SceneTree<class_SceneTree>` parsing needs to happen on the main thread. After the parsing is finished use the resource with :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>` to bake a navigation mesh.

使用从 ``root_node`` 开始收集的源几何图形来烘焙 ``navigation_mesh``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_bake_from_source_geometry_data:

.. rst-class:: classref-method

|void| **bake_from_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>`

使用 ``source_geometry_data`` 中提供的数据对 ``navigation_mesh`` 进行烘焙。烘焙过程结束后，会调用可选的 ``callback``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`\ ) :ref:`🔗<class_NavigationMeshGenerator_method_clear>`

从提供的 ``navigation_mesh`` 资源中移除所有多边形和顶点。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshGenerator_method_parse_source_geometry_data:

.. rst-class:: classref-method

|void| **parse_source_geometry_data**\ (\ navigation_mesh\: :ref:`NavigationMesh<class_NavigationMesh>`, source_geometry_data\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, root_node\: :ref:`Node<class_Node>`, callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_NavigationMeshGenerator_method_parse_source_geometry_data>`

根据 ``navigation_mesh`` 的属性解析 :ref:`SceneTree<class_SceneTree>` 中的源几何体。会使用解析的结果对提供的 ``source_geometry_data`` 资源进行更新。后续可以在使用 :ref:`bake_from_source_geometry_data()<class_NavigationMeshGenerator_method_bake_from_source_geometry_data>` 烘焙导航网格时使用该资源。解析过程完成后，会调用可选的 ``callback``\ 。

\ **注意：**\ 因为 SceneTree 并不是线程安全的，所以这个函数需要在主线程执行或使用延迟调用。

\ **注意：**\ 从 :ref:`Mesh<class_Mesh>` 资源读取数据数组虽然很方便，但会对帧率造成负面影响。这些数据需要从 GPU 获取，卡住正在处理的 :ref:`RenderingServer<class_RenderingServer>`\ 。出于性能考量，请优先使用碰撞形状或在代码中创建完整的数据数组等方法。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
