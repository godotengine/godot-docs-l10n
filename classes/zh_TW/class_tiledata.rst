:github_url: hide

.. _class_TileData:

TileData
========

**繼承：** :ref:`Object<class_Object>`

:ref:`TileSet<class_TileSet>` 中單個圖塊的設定。

.. rst-class:: classref-introduction-group

說明
----

**TileData** object represents a single tile in a :ref:`TileSet<class_TileSet>`. It is usually edited using the tileset editor, but it can be modified at runtime using :ref:`TileMapLayer._tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>`.

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_TileData_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileData_signal_changed>`

任何屬性發生變化時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TileData_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TileData_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_h**\ (\ )

如果為 ``true``\ ，則該圖塊的紋理會被水平翻轉。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TileData_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_v**\ (\ )

如果為 ``true``\ ，則該圖塊的紋理會被垂直翻轉。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_TileData_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用於此 **TileData** 的 :ref:`Material<class_Material>`\ 。使用預設著色器可以設為 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`\ ，使用自訂著色器可以設為 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TileData_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

該圖塊的顏色調變。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_probability:

.. rst-class:: classref-property

:ref:`float<class_float>` **probability** = ``1.0`` :ref:`🔗<class_TileData_property_probability>`

.. rst-class:: classref-property-setget

- |void| **set_probability**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_probability**\ (\ )

繪製隨機圖塊圖案時選擇該圖塊的相對概率。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain** = ``-1`` :ref:`🔗<class_TileData_property_terrain>`

.. rst-class:: classref-property-setget

- |void| **set_terrain**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain**\ (\ )

該圖塊所使用的地形集中地形的 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain_set:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain_set** = ``-1`` :ref:`🔗<class_TileData_property_terrain_set>`

.. rst-class:: classref-property-setget

- |void| **set_terrain_set**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain_set**\ (\ )

該圖塊所使用的地形集的 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_texture_origin:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_origin** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileData_property_texture_origin>`

.. rst-class:: classref-property-setget

- |void| **set_texture_origin**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_origin**\ (\ )

該圖塊繪製時的位置偏移量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_transpose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transpose** = ``false`` :ref:`🔗<class_TileData_property_transpose>`

.. rst-class:: classref-property-setget

- |void| **set_transpose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_transpose**\ (\ )

如果為 ``true``\ ，則該圖塊會轉置顯示，即調換水平和垂直紋理 UV。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileData_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

該圖塊用於確定 Y 排序順序的垂直點。

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_z_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **z_index** = ``0`` :ref:`🔗<class_TileData_property_z_index>`

.. rst-class:: classref-property-setget

- |void| **set_z_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_index**\ (\ )

Ordering index of this tile, relative to :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileData_method_add_collision_polygon:

.. rst-class:: classref-method

|void| **add_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_collision_polygon>`

為該圖塊在給定的 TileSet 實體層上新增碰撞多邊形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_add_occluder_polygon:

.. rst-class:: classref-method

|void| **add_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_occluder_polygon>`

Adds an occlusion polygon to the tile on the TileSet occlusion layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_one_way_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_one_way_margin>`

返回在索引為 ``layer_id`` 的 TileSet 實體層上，索引為 ``polygon_index`` 的多邊形的單向邊距（用於單向平臺）。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_points>`

返回在索引為 ``layer_id`` 的 TileSet 實體層上，索引為 ``polygon_index`` 的多邊形的點。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygons_count>`

設定該圖塊中索引為 ``layer_id`` 的 TileSet 實體層中多邊形的數量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_angular_velocity>`

返回恒定角速度，將套用於與此圖塊碰撞的物件。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_linear_velocity>`

返回恒定線速度，將套用於與此圖塊碰撞的物件。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data>`

Returns the custom data value for custom data layer named ``layer_name``. To check if a custom data layer exists, use :ref:`has_custom_data()<class_TileData_method_has_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data_by_layer_id:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data_by_layer_id>`

返回自訂資料層的自訂資料值，自訂資料層用索引 ``layer_id`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_navigation_polygon:

.. rst-class:: classref-method

:ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_navigation_polygon>`

Returns the navigation polygon of the tile for the TileSet navigation layer with index ``layer_id``.

\ ``flip_h``, ``flip_v``, and ``transpose`` allow transforming the returned polygon.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder>`

**已棄用：** Use :ref:`get_occluder_polygon()<class_TileData_method_get_occluder_polygon>` instead.

Returns the occluder polygon of the tile for the TileSet occlusion layer with index ``layer_id``.

\ ``flip_h``, ``flip_v``, and ``transpose`` allow transforming the returned polygon.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygon:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygon>`

Returns the occluder polygon at index ``polygon_index`` from the TileSet occlusion layer with index ``layer_id``.

The ``flip_h``, ``flip_v``, and ``transpose`` parameters can be ``true`` to transform the returned polygon.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygons_count>`

Returns the number of occluder polygons of the tile in the TileSet occlusion layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_get_terrain_peering_bit>`

Returns the tile's terrain bit for the given ``peering_bit`` direction. To check that a direction is valid, use :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_has_custom_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_has_custom_data>`

Returns whether there exists a custom data layer named ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_collision_polygon_one_way:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_is_collision_polygon_one_way>`

返回索引為 ``layer_id`` 的 TileSet 實體層上索引為 ``polygon_index`` 的多邊形是否啟用了單向碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_valid_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_is_valid_terrain_peering_bit>`

Returns whether the given ``peering_bit`` direction is valid for this tile.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_collision_polygon:

.. rst-class:: classref-method

|void| **remove_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_collision_polygon>`

移除索引為 ``layer_id`` 的 TileSet 實體層上索引為 ``polygon_index`` 的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_occluder_polygon:

.. rst-class:: classref-method

|void| **remove_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_occluder_polygon>`

Removes the polygon at index ``polygon_index`` for TileSet occlusion layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way>`

啟用/禁用索引為 ``layer_id`` 的 TileSet 實體層上索引為 ``polygon_index`` 的多邊形的單向碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way_margin:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way_margin>`

Sets the one-way margin (for one-way platforms) of the polygon at index ``polygon_index`` for TileSet physics layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_points:

.. rst-class:: classref-method

|void| **set_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_points>`

設定索引為 ``layer_id`` 的 TileSet 實體層上索引為 ``polygon_index`` 的多邊形的頂點。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygons_count:

.. rst-class:: classref-method

|void| **set_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygons_count>`

設定索引為 ``layer_id`` 的 TileSet 實體層中多邊形的數量。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_angular_velocity:

.. rst-class:: classref-method

|void| **set_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_constant_angular_velocity>`

設定恒定角速度。不會旋轉圖塊。會對與該圖塊發生碰撞的物件套用該角速度。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_linear_velocity:

.. rst-class:: classref-method

|void| **set_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_TileData_method_set_constant_linear_velocity>`

設定恒定線速度。不會旋轉圖塊。會對與該圖塊發生碰撞的物件套用該線速度。可用於建立傳送帶。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data:

.. rst-class:: classref-method

|void| **set_custom_data**\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data>`

設定該圖塊的自訂資料值，TileSet 自訂資料層由名稱 ``layer_name`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data_by_layer_id:

.. rst-class:: classref-method

|void| **set_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data_by_layer_id>`

設定該圖塊的自訂資料值，TileSet 自訂資料層由索引 ``layer_id`` 指定。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_navigation_polygon:

.. rst-class:: classref-method

|void| **set_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ ) :ref:`🔗<class_TileData_method_set_navigation_polygon>`

設定索引為 ``layer_id`` 的 TileSet 導覽層的導覽多邊形。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder:

.. rst-class:: classref-method

|void| **set_occluder**\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder>`

**已棄用：** Use :ref:`set_occluder_polygon()<class_TileData_method_set_occluder_polygon>` instead.

設定索引為 ``layer_id`` 的 TileSet 遮擋層的遮擋器。

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygon:

.. rst-class:: classref-method

|void| **set_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygon>`

Sets the occluder for polygon with index ``polygon_index`` in the TileSet occlusion layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygons_count:

.. rst-class:: classref-method

|void| **set_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygons_count>`

Sets the occluder polygon count in the TileSet occlusion layer with index ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_terrain_peering_bit:

.. rst-class:: classref-method

|void| **set_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_terrain_peering_bit>`

Sets the tile's terrain bit for the given ``peering_bit`` direction. To check that a direction is valid, use :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
