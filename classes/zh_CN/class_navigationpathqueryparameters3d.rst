:github_url: hide

.. _class_NavigationPathQueryParameters3D:

NavigationPathQueryParameters3D
===============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为 3D 导航路径查询提供参数。

.. rst-class:: classref-introduction-group

描述
----

更改该对象的起始和结束位置等属性可以配置对 :ref:`NavigationServer3D<class_NavigationServer3D>` 的路径查询。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationPathQueryObject <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters3D_property_excluded_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters3D_property_included_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters3D_property_map>`                                           | ``RID()``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters3D_property_metadata_flags>`                     | ``7``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters3D_property_navigation_layers>`               | ``1``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters3D_property_path_postprocessing>`           | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters3D_property_path_return_max_length>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters3D_property_path_search_max_distance>` | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>` | ``4096``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`       | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`                 | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters3D_property_simplify_path>`                       | ``false``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters3D_property_start_position>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters3D_property_target_position>`                   | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_NavigationPathQueryParameters3D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters3D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

路径查询使用默认的 A\* 寻路算法。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

将漏斗算法应用于寻路算法找到的原始路径走廊。这将导致最短路径可能在路径走廊内。该后处理在很大程度上取决于导航网格多边形布局和创建的走廊。特别是基于图块和网格的布局，可能会由于单元格形状强加的锯齿状的路径走廊，而面临对角线移动的人工角落。

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

Centers every position in the middle of the traveled navigation mesh's polygon edge. This creates better paths for tile- or grid-based layouts that restrict the movement to the cells' centers.

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

不进行后期处理，返回寻路算法找到的原始路径走廊。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

不要包含任何关于返回路径的额外元数据。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

包含路径上的各个点所经过的导航图元类型（地区或链接）。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

包含路径上的各个点所经过的地区和链接的 :ref:`RID<class_RID>`\ 。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

包含管理路径上的各个点所经过的地区和链接的 :ref:`Object<class_Object>` 的 ``ObjectID``\ 。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

包含关于返回路径的所有可用元数据。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationPathQueryParameters3D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

将被排除在路径查询之外的区块的 :ref:`RID<class_RID>` 列表。请使用 :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` 来获取与派生自 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 的节点关联的 :ref:`RID<class_RID>`\ 。

\ **注意：**\ 返回的数组为副本，对其进行的修改不会更新原有属性。更新时，请先修改返回的数组，然后将其重新赋值回该属性。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

将被排除在路径查询之外的区块的 :ref:`RID<class_RID>` 列表。请使用 :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` 来获取与派生自 :ref:`NavigationRegion3D<class_NavigationRegion3D>` 的节点关联的 :ref:`RID<class_RID>`\ 。如果留空则会包含所有区块。如果区块最终同时处于包含和排除状态，则会被排除。

\ **注意：**\ 返回的数组为副本，对其进行的修改不会更新原有属性。更新时，请先修改返回的数组，然后将其重新赋值回该属性。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

在路径查询中使用的导航地图 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

包含在导航路径中的额外信息。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

查询所使用的导航层（形式为位掩码）。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

对 :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>` 找到的原始路径走廊应用的路径后期处理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

返回路径允许的最大长度，单位为世界单位。路径超出该长度后会被截断。设为小于等于 ``0`` 时为禁用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

返回路径从起点开始所允许的最大半径，单位为世界单位。路径超出该半径后会被截断。取值小于等于 ``0`` 时视为禁用。

\ **注意：**\ 该属性会对路径执行球形裁剪，路径上的第一个位置是球心所在的位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

搜索通往目的位置多边形的路径时（可能不可达或非常远），取消寻路前能够搜索的多边形的最大距离。取消时，寻路会重置，构建出的路径从起始多边形开始，通往目前所找到的最接近目的位置的多边形。小于等于 ``0`` 表示不限制数量，寻路时会搜索与起始多边形相连的所有多边形，直到发现目的位置多边形或已经查过所有待查的多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

搜索通往目的位置多边形的路径时（可能不可达或非常远），取消寻路前能够搜索的最大多边形数。取消时，寻路会重置，构建出的路径从起始多边形开始，通往目前所找到的最接近目的位置的多边形。小于等于 ``0`` 表示不限制数量，寻路时会搜索与起始多边形相连的所有多边形，直到发现目的位置多边形或已经查过所有待查的多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路径查询中使用的寻路算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in world units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

如果为 ``true``\ ，将返回路径的简化版本，其中移除了不太重要的路径点。简化量由 :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>` 控制。简化使用 Ramer-Douglas-Peucker 算法的变体进行曲线点抽取。

路径简化有助于缓解使用某些代理类型和脚本行为可能出现的各种路径跟踪问题。例如“开放场”中的“转向”代理或避让。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **start_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_start_position**\ (\ )

寻路起始点，使用全局坐标。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

寻路目标点，使用全局坐标。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
