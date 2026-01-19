:github_url: hide

.. _class_TileSetAtlasSource:

TileSetAtlasSource
==================

**继承：** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以一组图块的形式向 :ref:`TileSet<class_TileSet>` 资源暴露 2D 图集纹理。

.. rst-class:: classref-introduction-group

描述
----

图集是在纹理上铺设的图块栅格。栅格中的每个图块都必须使用 :ref:`create_tile()<class_TileSetAtlasSource_method_create_tile>` 公开。然后使用它们在栅格中的坐标，对这些图块进行索引。

每个图块也可以在栅格坐标中有一个大小，使其在地图集中的单元格更多或更少。

可以使用 :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>` 创建图块的替代版本，然后使用替代 ID 对其进行索引。主图块（栅格中的那个）使用一个等于 0 的替代 ID 进行访问。

每个图块替代品都有一组由源的 :ref:`TileSet<class_TileSet>` 图层定义的属性。这些属性存储在 TileData 对象中，该对象可以使用 :ref:`get_tile_data()<class_TileSetAtlasSource_method_get_tile_data>` 来访问和修改。

由于 TileData 属性直接存储在 TileSetAtlasSource 资源中，它们的属性也可以使用 ``TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")`` 设置。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`margins<class_TileSetAtlasSource_property_margins>`                         | ``Vector2i(0, 0)``   |
   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`separation<class_TileSetAtlasSource_property_separation>`                   | ``Vector2i(0, 0)``   |
   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_TileSetAtlasSource_property_texture>`                         |                      |
   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>` | ``Vector2i(16, 16)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` | ``true``             |
   +-----------------------------------+-----------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`clear_tiles_outside_texture<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`\ (\ )                                                                                                                                                                                                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`create_alternative_tile<class_TileSetAtlasSource_method_create_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ )                                                                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`create_tile<class_TileSetAtlasSource_method_create_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ )                                                                                                                                                                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                     | :ref:`get_atlas_grid_size<class_TileSetAtlasSource_method_get_atlas_grid_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_next_alternative_tile_id<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                               |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                   | :ref:`get_runtime_texture<class_TileSetAtlasSource_method_get_runtime_texture>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`                                         | :ref:`get_runtime_tile_texture_region<class_TileSetAtlasSource_method_get_runtime_tile_texture_region>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                          |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_tile_animation_columns<class_TileSetAtlasSource_method_get_tile_animation_columns>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_tile_animation_frame_duration<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_tile_animation_frames_count<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` | :ref:`get_tile_animation_mode<class_TileSetAtlasSource_method_get_tile_animation_mode>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                     | :ref:`get_tile_animation_separation<class_TileSetAtlasSource_method_get_tile_animation_separation>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_tile_animation_speed<class_TileSetAtlasSource_method_get_tile_animation_speed>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_tile_animation_total_duration<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                     | :ref:`get_tile_at_coords<class_TileSetAtlasSource_method_get_tile_at_coords>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileData<class_TileData>`                                     | :ref:`get_tile_data<class_TileSetAtlasSource_method_get_tile_data>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                     | :ref:`get_tile_size_in_atlas<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`                                         | :ref:`get_tile_texture_region<class_TileSetAtlasSource_method_get_tile_texture_region>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const|                                                                                                                                                                                                      |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                 | :ref:`get_tiles_to_be_removed_on_change<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_room_for_tile<class_TileSetAtlasSource_method_has_room_for_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`has_tiles_outside_texture<class_TileSetAtlasSource_method_has_tiles_outside_texture>`\ (\ ) |const|                                                                                                                                                                                                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`move_tile_in_atlas<class_TileSetAtlasSource_method_move_tile_in_atlas>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ )                                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_alternative_tile<class_TileSetAtlasSource_method_remove_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ )                                                                                                                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`remove_tile<class_TileSetAtlasSource_method_remove_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                                                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_alternative_tile_id<class_TileSetAtlasSource_method_set_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ )                                                                                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_columns<class_TileSetAtlasSource_method_set_tile_animation_columns>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ )                                                                                                                                                                                                    |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_frame_duration<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ )                                                                                                                                                  |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_frames_count<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ )                                                                                                                                                                                           |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_mode<class_TileSetAtlasSource_method_set_tile_animation_mode>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ )                                                                                                                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_separation<class_TileSetAtlasSource_method_set_tile_animation_separation>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_tile_animation_speed<class_TileSetAtlasSource_method_set_tile_animation_speed>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ )                                                                                                                                                                                                            |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TileSetAtlasSource_TileAnimationMode:

.. rst-class:: classref-enumeration

enum **TileAnimationMode**: :ref:`🔗<enum_TileSetAtlasSource_TileAnimationMode>`

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_DEFAULT** = ``0``

图块动画在相同的时间开始，外观一致。

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_RANDOM_START_TIMES:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_RANDOM_START_TIMES** = ``1``

图块动画在随机的时间开始，外观不同。

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_MAX** = ``2``

代表 :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_H** = ``4096`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`

代表单元格的水平翻转标志。应该直接对 :ref:`TileMapLayer<class_TileMapLayer>` 使用，修改放置图块的备选 ID，将其进行翻转。

::

    var alternate_id = $TileMapLayer.get_cell_alternative_tile(Vector2i(2, 2))
    if not alternate_id & TileSetAtlasSource.TRANSFORM_FLIP_H:
        # 如果没有翻转过就进行翻转。
        $TileMapLayer.set_cell(Vector2i(2, 2), source_id, atlas_coords, alternate_id | TileSetAtlasSource.TRANSFORM_FLIP_H)

\ **注意：**\ 可以将这些变换进行组合，从而实现 0、90、180、270 度旋转，示例如下：

::

    enum TileTransform {
        ROTATE_0 = 0,
        ROTATE_90 = TileSetAtlasSource.TRANSFORM_TRANSPOSE | TileSetAtlasSource.TRANSFORM_FLIP_H,
        ROTATE_180 = TileSetAtlasSource.TRANSFORM_FLIP_H | TileSetAtlasSource.TRANSFORM_FLIP_V,
        ROTATE_270 = TileSetAtlasSource.TRANSFORM_TRANSPOSE | TileSetAtlasSource.TRANSFORM_FLIP_V,
    }

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_V:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_V** = ``8192`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_V>`

代表单元格的垂直翻转标志。用法见 :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`\ 。

.. _class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE:

.. rst-class:: classref-constant

**TRANSFORM_TRANSPOSE** = ``16384`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE>`

代表单元格的转置标志。用法见 :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TileSetAtlasSource_property_margins:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **margins** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_margins>`

.. rst-class:: classref-property-setget

- |void| **set_margins**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_margins**\ (\ )

边距，单位为像素，用于偏移纹理中栅格的原点。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_separation:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **separation** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_separation>`

.. rst-class:: classref-property-setget

- |void| **set_separation**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_separation**\ (\ )

间隔，单位为像素，是栅格的纹理区域中图块之间的间距。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TileSetAtlasSource_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

图集纹理。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture_region_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_region_size** = ``Vector2i(16, 16)`` :ref:`🔗<class_TileSetAtlasSource_property_texture_region_size>`

.. rst-class:: classref-property-setget

- |void| **set_texture_region_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_region_size**\ (\ )

纹理中的基础图块大小（以像素为单位）。该大小必须大于等于 TileSet 中的 ``tile_size`` 值。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_use_texture_padding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_padding** = ``true`` :ref:`🔗<class_TileSetAtlasSource_property_use_texture_padding>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_padding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_texture_padding**\ (\ )

如果为 ``true``\ ，则生成一个内部纹理，每个图块周围有一个额外的单像素填充。纹理填充避免了图块之间出现线条状的常见伪像。

禁用该设置可能会导致性能略有提高，因为在 TileSetAtlasSource 资源被修改时，生成内部纹理需要内存和处理时间。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TileSetAtlasSource_method_clear_tiles_outside_texture:

.. rst-class:: classref-method

|void| **clear_tiles_outside_texture**\ (\ ) :ref:`🔗<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`

移除所有位于可用纹理区域之外的图块。这个方法会遍历所有源的图块，因此建议先使用 :ref:`has_tiles_outside_texture()<class_TileSetAtlasSource_method_has_tiles_outside_texture>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_alternative_tile>`

为坐标为 ``atlas_coords`` 的图块创建备选图块。如果 ``alternative_id_override`` 为 -1，则会给予自动生成的唯一 ID，否则使用给定的 ID 赋值。

返回新的备选标识符，如果无法使用提供的 ``alternative_id_override`` 创建则返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_tile:

.. rst-class:: classref-method

|void| **create_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_tile>`

在坐标 ``atlas_coords`` 处新建给定大小 ``size`` 的图块。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_atlas_grid_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_atlas_grid_size**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_atlas_grid_size>`

返回图集栅格大小，这取决于纹理中可以容纳多少个图块。因此，它取决于 :ref:`texture<class_TileSetAtlasSource_property_texture>` 的大小，该图集的 :ref:`margins<class_TileSetAtlasSource_property_margins>` 和该图块的 :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_next_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`

返回后续调用 :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>` 时将返回的备选 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_runtime_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_texture>`

If :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` is ``false``, returns :ref:`texture<class_TileSetAtlasSource_property_texture>`. Otherwise, returns an internal :ref:`ImageTexture<class_ImageTexture>` created that includes the padding.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_runtime_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_tile_texture_region>`

返回由 :ref:`get_runtime_texture()<class_TileSetAtlasSource_method_get_runtime_texture>` 返回的纹理内给定 ``frame`` 的坐标 ``atlas_coords`` 处的图块区块。

\ **注意：**\ 如果 :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` 为 ``false``\ ，则返回与 :ref:`get_tile_texture_region()<class_TileSetAtlasSource_method_get_tile_texture_region>` 相同的结果。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_columns:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_columns>`

返回位于坐标 ``atlas_coords`` 的图块的动画布局中有多少列。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`

返回位于坐标 ``atlas_coords`` 的图块的第 ``frame_index`` 帧的动画帧时长。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frames_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`

返回位于坐标 ``atlas_coords`` 的图块有多少动画帧。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_mode:

.. rst-class:: classref-method

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **get_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_mode>`

返回 ``atlas_coords`` 处图块的图块动画模式。另见 :ref:`set_tile_animation_mode()<class_TileSetAtlasSource_method_set_tile_animation_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_separation:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_separation>`

返回位于坐标 ``atlas_coords`` 的图块的帧与帧之间（在图集网格中）的间隔。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_speed>`

返回位于坐标 ``atlas_coords`` 的图块的动画速度。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_total_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_total_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`

返回坐标 ``atlas_coords`` 处的图块的帧持续时间的总和。这个值需要除以动画速度才能得到实际的动画循环持续时间。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_at_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_at_coords**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_at_coords>`

如果有覆盖 ``atlas_coords`` 坐标的图块，则返回该图块左上角的坐标（即它的坐标 ID）。否则返回 ``Vector2i(-1, -1)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_tile_data**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_data>`

返回给定图集坐标和备选 ID 对应的 :ref:`TileData<class_TileData>` 对象。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_size_in_atlas:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_size_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`

返回位于坐标 ``atlas_coords`` 的图块的大小（使用栅格坐标系）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_texture_region>`

返回某个图块在图集纹理中的纹理区域。对于动画图块，可以提供 ``frame`` 参数来获取动画中不同的帧对应的区域。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_tiles_to_be_removed_on_change**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`

返回修改以下任意属性时将会自动移除的图块坐标 ID 的数组：\ ``texture``\ 、\ ``margins``\ 、\ ``separation``\ 、\ ``texture_region_size``\ 。可以用来撤销可能造成图块数据丢失的更改。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_room_for_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_room_for_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_room_for_tile>`

返回图集中是否有足够的空间来使用给定的属性创建/修改图块。如果提供了 ``ignored_tile``\ ，则判断时会和给定的图块在图集中不存在一样。可以在想要修改某个图块的属性时使用。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_tiles_outside_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tiles_outside_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_tiles_outside_texture>`

检查该源是否存在位于纹理区域之外的图块（无论是部分位于区域外还是完全位于区域外）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_move_tile_in_atlas:

.. rst-class:: classref-method

|void| **move_tile_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_move_tile_in_atlas>`

将 ``atlas_coords`` 坐标处的图块及其替代物移动到具有 ``new_size`` 大小的 ``new_atlas_coords`` 坐标。如果给定区域中已经存在一个图块，则该函数将失败。

如果 ``new_atlas_coords`` 为 ``Vector2i(-1, -1)``\ ，则保持图块的坐标。如果 ``new_size`` 为 ``Vector2i(-1, -1)``\ ，则保持图块的大小。

为避免错误，请首先使用 :ref:`has_room_for_tile()<class_TileSetAtlasSource_method_has_room_for_tile>` 来检查移动是否可行。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_alternative_tile:

.. rst-class:: classref-method

|void| **remove_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_alternative_tile>`

移除备选 ID 为 ``alternative_tile`` 的备选图块。

使用为 0 的 ``alternative_tile`` 调用这个函数会失败，因为基础图块备选项无法被移除。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_tile:

.. rst-class:: classref-method

|void| **remove_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_tile>`

移除位于坐标 ``atlas_coords`` 的图块及其备选项。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_alternative_tile_id:

.. rst-class:: classref-method

|void| **set_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_alternative_tile_id>`

将图块的备选 ID 从 ``alternative_tile`` 改为 ``new_id``\ 。

调用这个函数时将 ``new_id`` 设为 0 会导致失败，因为基础图块备选项无法移动。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_columns:

.. rst-class:: classref-method

|void| **set_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_columns>`

设置位于坐标 ``atlas_coords`` 的图块的动画布局中的列数。如果设置为 0，则动画帧在图集中水平排列。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frame_duration:

.. rst-class:: classref-method

|void| **set_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`

设置位于坐标 ``atlas_coords`` 的图块动画帧 ``frame_index`` 的持续时间 ``duration``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frames_count:

.. rst-class:: classref-method

|void| **set_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`

设置位于坐标 ``atlas_coords`` 的图块有多少动画帧。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_mode:

.. rst-class:: classref-method

|void| **set_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_mode>`

将 ``atlas_coords`` 处的图块的图块动画模式设置为 ``mode``\ 。另见 :ref:`get_tile_animation_mode()<class_TileSetAtlasSource_method_get_tile_animation_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_separation:

.. rst-class:: classref-method

|void| **set_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_separation>`

设置位于坐标 ``atlas_coords`` 的图块的动画布局中，图块的间距（单位为栅格图块）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_speed:

.. rst-class:: classref-method

|void| **set_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_speed>`

设置位于坐标 ``atlas_coords`` 的图块的动画速度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
