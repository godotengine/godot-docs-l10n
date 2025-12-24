:github_url: hide

.. _class_TileData:

TileData
========

**继承：** :ref:`Object<class_Object>`

:ref:`TileSet<class_TileSet>` 中单个图块的设置。

.. rst-class:: classref-introduction-group

描述
----

**TileData** 对象代表 :ref:`TileSet<class_TileSet>` 中的单个图块，通常使用图块集编辑器进行编辑，但也可以在运行时使用 :ref:`TileMapLayer._tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` 进行修改。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_h<class_TileData_property_flip_h>`                 | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_v<class_TileData_property_flip_v>`                 | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_TileData_property_material>`             |                       |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`modulate<class_TileData_property_modulate>`             | ``Color(1, 1, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`       | :ref:`probability<class_TileData_property_probability>`       | ``1.0``               |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`terrain<class_TileData_property_terrain>`               | ``-1``                |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`terrain_set<class_TileData_property_terrain_set>`       | ``-1``                |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`texture_origin<class_TileData_property_texture_origin>` | ``Vector2i(0, 0)``    |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`transpose<class_TileData_property_transpose>`           | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`y_sort_origin<class_TileData_property_y_sort_origin>`   | ``0``                 |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`z_index<class_TileData_property_z_index>`               | ``0``                 |
   +---------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_collision_polygon<class_TileData_method_add_collision_polygon>`\ (\ layer_id\: :ref:`int<class_int>`\ )                                                                                                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_occluder_polygon<class_TileData_method_add_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_collision_polygon_one_way_margin<class_TileData_method_get_collision_polygon_one_way_margin>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_collision_polygon_points<class_TileData_method_get_collision_polygon_points>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_collision_polygons_count<class_TileData_method_get_collision_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_constant_angular_velocity<class_TileData_method_get_constant_angular_velocity>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_constant_linear_velocity<class_TileData_method_get_constant_linear_velocity>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_custom_data<class_TileData_method_get_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_custom_data_by_layer_id<class_TileData_method_get_custom_data_by_layer_id>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPolygon<class_NavigationPolygon>`   | :ref:`get_navigation_polygon<class_TileData_method_get_navigation_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`   | :ref:`get_occluder<class_TileData_method_get_occluder>`\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`   | :ref:`get_occluder_polygon<class_TileData_method_get_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_occluder_polygons_count<class_TileData_method_get_occluder_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_terrain_peering_bit<class_TileData_method_get_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_custom_data<class_TileData_method_has_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_collision_polygon_one_way<class_TileData_method_is_collision_polygon_one_way>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_valid_terrain_peering_bit<class_TileData_method_is_valid_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_collision_polygon<class_TileData_method_remove_collision_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_occluder_polygon<class_TileData_method_remove_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_one_way<class_TileData_method_set_collision_polygon_one_way>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ )                                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_one_way_margin<class_TileData_method_set_collision_polygon_one_way_margin>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ )                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_points<class_TileData_method_set_collision_polygon_points>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygons_count<class_TileData_method_set_collision_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ )                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_constant_angular_velocity<class_TileData_method_set_constant_angular_velocity>`\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ )                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_constant_linear_velocity<class_TileData_method_set_constant_linear_velocity>`\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_custom_data<class_TileData_method_set_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_custom_data_by_layer_id<class_TileData_method_set_custom_data_by_layer_id>`\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_navigation_polygon<class_TileData_method_set_navigation_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )                                                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder<class_TileData_method_set_occluder>`\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder_polygon<class_TileData_method_set_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder_polygons_count<class_TileData_method_set_occluder_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ )                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_terrain_peering_bit<class_TileData_method_set_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ )                                                                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_TileData_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileData_signal_changed>`

任何属性发生变化时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TileData_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TileData_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_h**\ (\ )

如果为 ``true``\ ，则该图块的纹理会被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TileData_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_v**\ (\ )

如果为 ``true``\ ，则该图块的纹理会被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_TileData_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于此 **TileData** 的 :ref:`Material<class_Material>`\ 。使用默认着色器可以设为 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`\ ，使用自定义着色器可以设为 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TileData_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

该图块的颜色调制。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_probability:

.. rst-class:: classref-property

:ref:`float<class_float>` **probability** = ``1.0`` :ref:`🔗<class_TileData_property_probability>`

.. rst-class:: classref-property-setget

- |void| **set_probability**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_probability**\ (\ )

绘制随机图块图案时选择该图块的相对概率。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain** = ``-1`` :ref:`🔗<class_TileData_property_terrain>`

.. rst-class:: classref-property-setget

- |void| **set_terrain**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain**\ (\ )

该图块所使用的地形集中地形的 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain_set:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain_set** = ``-1`` :ref:`🔗<class_TileData_property_terrain_set>`

.. rst-class:: classref-property-setget

- |void| **set_terrain_set**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain_set**\ (\ )

该图块所使用的地形集的 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_texture_origin:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_origin** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileData_property_texture_origin>`

.. rst-class:: classref-property-setget

- |void| **set_texture_origin**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_origin**\ (\ )

该图块绘制时的位置偏移量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_transpose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transpose** = ``false`` :ref:`🔗<class_TileData_property_transpose>`

.. rst-class:: classref-property-setget

- |void| **set_transpose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_transpose**\ (\ )

如果为 ``true``\ ，则该图块会转置显示，即调换水平和垂直纹理 UV。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileData_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

该图块用于确定 Y 排序顺序的垂直点。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_z_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **z_index** = ``0`` :ref:`🔗<class_TileData_property_z_index>`

.. rst-class:: classref-property-setget

- |void| **set_z_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_index**\ (\ )

该图块的排序索引，相对于 :ref:`TileMapLayer<class_TileMapLayer>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TileData_method_add_collision_polygon:

.. rst-class:: classref-method

|void| **add_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_collision_polygon>`

在给定的 TileSet 物理层上为该图块添加一个碰撞多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_add_occluder_polygon:

.. rst-class:: classref-method

|void| **add_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_occluder_polygon>`

在索引为 ``layer_id`` 的 TileSet 遮挡层上为图块添加一个遮挡多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_one_way_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_one_way_margin>`

返回在索引为 ``layer_id`` 的 TileSet 物理层上，索引为 ``polygon_index`` 的多边形的单向边距（用于单向平台）。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_points>`

返回在索引为 ``layer_id`` 的 TileSet 物理层上，索引为 ``polygon_index`` 的多边形的点。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygons_count>`

设置该图块中索引为 ``layer_id`` 的 TileSet 物理层中多边形的数量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_angular_velocity>`

返回恒定角速度，将应用于与此图块碰撞的对象。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_linear_velocity>`

返回恒定线速度，将应用于与此图块碰撞的对象。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data>`

返回名为 ``layer_name`` 的自定义数据层的自定义数据值。检查自定义数据层是否存在请使用 :ref:`has_custom_data()<class_TileData_method_has_custom_data>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data_by_layer_id:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data_by_layer_id>`

返回自定义数据层的自定义数据值，自定义数据层用索引 ``layer_id`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_navigation_polygon:

.. rst-class:: classref-method

:ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_navigation_polygon>`

返回图块的导航多边形，对应的 TileSet 导航层由索引 ``layer_id`` 指定。

可以使用 ``flip_h``\ 、\ ``flip_v``\ 、\ ``transpose`` 对返回的多边形进行变换。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder>`

**已弃用：** Use :ref:`get_occluder_polygon()<class_TileData_method_get_occluder_polygon>` instead.

返回图块的遮挡器多边形，对应的 TileSet 遮挡层由索引 ``layer_id`` 指定。

可以使用 ``flip_h``\ 、\ ``flip_v``\ 、\ ``transpose`` 对返回的多边形进行变换。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygon:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygon>`

返回索引为 ``layer_id`` 的 TileSet 遮挡层的遮挡器中索引为 ``polygon_index`` 的多边形。

参数 ``flip_h``\ 、\ ``flip_v``\ 、\ ``transpose`` 参数可以为 ``true``\ ，对返回的多边形进行变换。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygons_count>`

返回索引为 ``layer_id`` 的 TileSet 遮挡层的遮挡器多边形的数量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_get_terrain_peering_bit>`

返回该图块给定 ``peering_bit`` 方向的地形位。要检查方向是否有效，请使用 :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_has_custom_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_has_custom_data>`

返回是否存在名为 ``layer_name`` 的自定义数据层。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_collision_polygon_one_way:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_is_collision_polygon_one_way>`

返回索引为 ``layer_id`` 的 TileSet 物理层上索引为 ``polygon_index`` 的多边形是否启用了单向碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_valid_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_is_valid_terrain_peering_bit>`

返回给定的 ``peering_bit`` 方向对于该图块是否有效。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_collision_polygon:

.. rst-class:: classref-method

|void| **remove_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_collision_polygon>`

移除索引为 ``layer_id`` 的 TileSet 物理层上索引为 ``polygon_index`` 的多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_occluder_polygon:

.. rst-class:: classref-method

|void| **remove_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_occluder_polygon>`

移除索引为 ``layer_id`` 的 TileSet 遮挡层上索引为 ``polygon_index`` 的多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way>`

启用/禁用索引为 ``layer_id`` 的 TileSet 物理层上索引为 ``polygon_index`` 的多边形的单向碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way_margin:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way_margin>`

设置在索引为 ``layer_id`` 的 TileSet 物理层上，索引为 ``polygon_index`` 的多边形的单向边距（用于单向平台）。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_points:

.. rst-class:: classref-method

|void| **set_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_points>`

设置索引为 ``layer_id`` 的 TileSet 物理层上索引为 ``polygon_index`` 的多边形的顶点。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygons_count:

.. rst-class:: classref-method

|void| **set_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygons_count>`

设置索引为 ``layer_id`` 的 TileSet 物理层中多边形的数量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_angular_velocity:

.. rst-class:: classref-method

|void| **set_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_constant_angular_velocity>`

设置恒定角速度。不会旋转图块。会对与该图块发生碰撞的对象应用该角速度。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_linear_velocity:

.. rst-class:: classref-method

|void| **set_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_TileData_method_set_constant_linear_velocity>`

设置恒定线速度。不会旋转图块。会对与该图块发生碰撞的对象应用该线速度。可用于创建传送带。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data:

.. rst-class:: classref-method

|void| **set_custom_data**\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data>`

设置该图块的自定义数据值，TileSet 自定义数据层由名称 ``layer_name`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data_by_layer_id:

.. rst-class:: classref-method

|void| **set_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data_by_layer_id>`

设置该图块的自定义数据值，TileSet 自定义数据层由索引 ``layer_id`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_navigation_polygon:

.. rst-class:: classref-method

|void| **set_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ ) :ref:`🔗<class_TileData_method_set_navigation_polygon>`

设置索引为 ``layer_id`` 的 TileSet 导航层的导航多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder:

.. rst-class:: classref-method

|void| **set_occluder**\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder>`

**已弃用：** Use :ref:`set_occluder_polygon()<class_TileData_method_set_occluder_polygon>` instead.

设置索引为 ``layer_id`` 的 TileSet 遮挡层的遮挡器。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygon:

.. rst-class:: classref-method

|void| **set_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygon>`

设置索引为 ``layer_id`` 的 TileSet 遮挡层的遮挡器中索引为 ``polygon_index`` 的多边形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygons_count:

.. rst-class:: classref-method

|void| **set_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygons_count>`

设置索引为 ``layer_id`` 的 TileSet 遮挡层的遮挡器多边形数量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_terrain_peering_bit:

.. rst-class:: classref-method

|void| **set_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_terrain_peering_bit>`

设置该图块给定 ``peering_bit`` 方向的地形位。要检查方向是否有效，请使用 :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
