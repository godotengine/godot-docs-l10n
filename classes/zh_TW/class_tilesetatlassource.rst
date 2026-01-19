:github_url: hide

.. _class_TileSetAtlasSource:

TileSetAtlasSource
==================

**繼承：** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以一組圖塊的形式向 :ref:`TileSet<class_TileSet>` 資源暴露 2D 合集紋理。

.. rst-class:: classref-introduction-group

說明
----

合集是在紋理上鋪設的圖塊柵格。柵格中的每個圖塊都必須使用 :ref:`create_tile()<class_TileSetAtlasSource_method_create_tile>` 公開。然後使用它們在柵格中的座標，對這些圖塊進行索引。

每個圖塊也可以在柵格座標中有一個大小，使其在地合集中的儲存格更多或更少。

可以使用 :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>` 建立圖塊的替代版本，然後使用替代 ID 對其進行索引。主圖塊（柵格中的那個）使用一個等於 0 的替代 ID 進行存取。

每個圖塊替代品都有一組由源的 :ref:`TileSet<class_TileSet>` 圖層定義的屬性。這些屬性儲存在 TileData 物件中，該物件可以使用 :ref:`get_tile_data()<class_TileSetAtlasSource_method_get_tile_data>` 來存取和修改。

由於 TileData 屬性直接儲存在 TileSetAtlasSource 資源中，它們的屬性也可以使用 ``TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")`` 設定。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_TileSetAtlasSource_TileAnimationMode:

.. rst-class:: classref-enumeration

enum **TileAnimationMode**: :ref:`🔗<enum_TileSetAtlasSource_TileAnimationMode>`

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_DEFAULT** = ``0``

平鋪動畫同時開始，看起來相同。

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_RANDOM_START_TIMES:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_RANDOM_START_TIMES** = ``1``

平鋪動畫隨機開始，看起來多種多樣。

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_MAX** = ``2``

代表 :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_H** = ``4096`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`

Represents cell's horizontal flip flag. Should be used directly with :ref:`TileMapLayer<class_TileMapLayer>` to flip placed tiles by altering their alternative IDs.

::

    var alternate_id = $TileMapLayer.get_cell_alternative_tile(Vector2i(2, 2))
    if not alternate_id & TileSetAtlasSource.TRANSFORM_FLIP_H:
        # If tile is not already flipped, flip it.
        $TileMapLayer.set_cell(Vector2i(2, 2), source_id, atlas_coords, alternate_id | TileSetAtlasSource.TRANSFORM_FLIP_H)

\ **Note:** These transformations can be combined to do the equivalent of 0, 90, 180, and 270 degree rotations, as shown below:

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

表示儲存格的垂直翻轉旗標。用法請參閱 :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`\ 。

.. _class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE:

.. rst-class:: classref-constant

**TRANSFORM_TRANSPOSE** = ``16384`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE>`

表示儲存格的轉置旗標。用法請參閱 :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TileSetAtlasSource_property_margins:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **margins** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_margins>`

.. rst-class:: classref-property-setget

- |void| **set_margins**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_margins**\ (\ )

邊距，單位為圖元，用於偏移紋理中柵格的原點。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_separation:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **separation** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_separation>`

.. rst-class:: classref-property-setget

- |void| **set_separation**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_separation**\ (\ )

間隔，單位為圖元，是柵格的紋理區域中圖塊之間的間距。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TileSetAtlasSource_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

合集紋理。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture_region_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_region_size** = ``Vector2i(16, 16)`` :ref:`🔗<class_TileSetAtlasSource_property_texture_region_size>`

.. rst-class:: classref-property-setget

- |void| **set_texture_region_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_region_size**\ (\ )

The base tile size in the texture (in pixel). This size must be bigger than or equal to the TileSet's ``tile_size`` value.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_use_texture_padding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_padding** = ``true`` :ref:`🔗<class_TileSetAtlasSource_property_use_texture_padding>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_padding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_texture_padding**\ (\ )

如果為 ``true``\ ，則生成一個內部紋理，每個圖塊周圍有一個額外的單圖元填充。紋理填充避免了圖塊之間出現線條狀的常見偽像。

禁用該設定可能會導致性能略有提高，因為在 TileSetAtlasSource 資源被修改時，生成內部紋理需要記憶體和處理時間。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileSetAtlasSource_method_clear_tiles_outside_texture:

.. rst-class:: classref-method

|void| **clear_tiles_outside_texture**\ (\ ) :ref:`🔗<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`

刪除所有不適合可用紋理區域的圖塊。此方法會迭代所有來源的圖塊，因此建議事先使用 :ref:`has_tiles_outside_texture()<class_TileSetAtlasSource_method_has_tiles_outside_texture>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_alternative_tile>`

為座標為 ``atlas_coords`` 的圖塊建立備選圖塊。如果 ``alternative_id_override`` 為 -1，則會給予自動生成的唯一 ID，否則使用給定的 ID 賦值。

返回新的備選識別字，如果無法使用提供的 ``alternative_id_override`` 建立則返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_tile:

.. rst-class:: classref-method

|void| **create_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_tile>`

在座標 ``atlas_coords`` 處新建給定大小 ``size`` 的圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_atlas_grid_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_atlas_grid_size**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_atlas_grid_size>`

Returns the atlas grid size, which depends on how many tiles can fit in the texture. It thus depends on the :ref:`texture<class_TileSetAtlasSource_property_texture>`'s size, the atlas :ref:`margins<class_TileSetAtlasSource_property_margins>`, and the tiles' :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_next_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`

返回後續呼叫 :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>` 時將返回的備選 ID。

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

返回由 :ref:`get_runtime_texture()<class_TileSetAtlasSource_method_get_runtime_texture>` 返回的紋理內給定 ``frame`` 的座標 ``atlas_coords`` 處的圖塊區塊。

\ **注意：**\ 如果 :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` 為 ``false``\ ，則返回與 :ref:`get_tile_texture_region()<class_TileSetAtlasSource_method_get_tile_texture_region>` 相同的結果。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_columns:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_columns>`

返回位於座標 ``atlas_coords`` 的圖塊的動畫布局中有多少列。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`

返回位於座標 ``atlas_coords`` 的圖塊的第 ``frame_index`` 影格的動畫影格時長。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frames_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`

返回位於座標 ``atlas_coords`` 的圖塊有多少動畫影格。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_mode:

.. rst-class:: classref-method

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **get_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_mode>`

Returns the tile animation mode of the tile at ``atlas_coords``. See also :ref:`set_tile_animation_mode()<class_TileSetAtlasSource_method_set_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_separation:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_separation>`

返回位於座標 ``atlas_coords`` 的圖塊的影格與影格之間（在合集網格中）的間隔。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_speed>`

返回位於座標 ``atlas_coords`` 的圖塊的動畫速度。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_total_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_total_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`

返回座標 ``atlas_coords`` 處的圖塊的影格持續時間的總和。這個值需要除以動畫速度才能得到實際的動畫迴圈持續時間。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_at_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_at_coords**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_at_coords>`

如果有覆蓋 ``atlas_coords`` 座標的圖塊，則返回該圖塊左上角的座標（即它的座標 ID）。否則返回 ``Vector2i(-1, -1)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_tile_data**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_data>`

返回給定合集座標和備選 ID 對應的 :ref:`TileData<class_TileData>` 對象。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_size_in_atlas:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_size_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`

返回位於座標 ``atlas_coords`` 的圖塊的大小（使用柵格坐標系）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_texture_region>`

返回某個圖塊在合集紋理中的紋理區域。對於動畫圖塊，可以提供 ``frame`` 參數來獲取動畫中不同的影格對應的區域。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_tiles_to_be_removed_on_change**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`

返回修改以下任意屬性時將會自動移除的圖塊座標 ID 的陣列：\ ``texture``\ 、\ ``margins``\ 、\ ``separation``\ 、\ ``texture_region_size``\ 。可以用來撤銷可能造成圖塊資料丟失的更改。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_room_for_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_room_for_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_room_for_tile>`

返回合集中是否有足夠的空間來使用給定的屬性建立/修改圖塊。如果提供了 ``ignored_tile``\ ，則判斷時會和給定的圖塊在合集中不存在一樣。可以在想要修改某個圖塊的屬性時使用。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_tiles_outside_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tiles_outside_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_tiles_outside_texture>`

檢查來源是否有任何不適合紋理區域（部分或完全）的圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_move_tile_in_atlas:

.. rst-class:: classref-method

|void| **move_tile_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_move_tile_in_atlas>`

將 ``atlas_coords`` 座標處的圖塊及其替代物移動到具有 ``new_size`` 大小的 ``new_atlas_coords`` 座標。如果給定區域中已經存在一個圖塊，則該函式將失敗。

如果 ``new_atlas_coords`` 為 ``Vector2i(-1, -1)``\ ，則保持圖塊的座標。如果 ``new_size`` 為 ``Vector2i(-1, -1)``\ ，則保持圖塊的大小。

為避免錯誤，請首先使用 :ref:`has_room_for_tile()<class_TileSetAtlasSource_method_has_room_for_tile>` 來檢查移動是否可行。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_alternative_tile:

.. rst-class:: classref-method

|void| **remove_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_alternative_tile>`

移除備選 ID 為 ``alternative_tile`` 的備選圖塊。

使用為 0 的 ``alternative_tile`` 呼叫這個函式會失敗，因為基礎圖塊備選項無法被移除。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_tile:

.. rst-class:: classref-method

|void| **remove_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_tile>`

移除位於座標 ``atlas_coords`` 的圖塊及其備選項。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_alternative_tile_id:

.. rst-class:: classref-method

|void| **set_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_alternative_tile_id>`

將圖塊的備選 ID 從 ``alternative_tile`` 改為 ``new_id``\ 。

呼叫這個函式時將 ``new_id`` 設為 0 會導致失敗，因為基礎圖塊備選項無法移動。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_columns:

.. rst-class:: classref-method

|void| **set_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_columns>`

設定位於座標 ``atlas_coords`` 的圖塊的動畫布局中的列數。如果設定為 0，則動畫影格在合集中水平排列。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frame_duration:

.. rst-class:: classref-method

|void| **set_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`

設定位於座標 ``atlas_coords`` 的圖塊動畫影格 ``frame_index`` 的持續時間 ``duration``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frames_count:

.. rst-class:: classref-method

|void| **set_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`

設定位於座標 ``atlas_coords`` 的圖塊有多少動畫影格。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_mode:

.. rst-class:: classref-method

|void| **set_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_mode>`

Sets the tile animation mode of the tile at ``atlas_coords`` to ``mode``. See also :ref:`get_tile_animation_mode()<class_TileSetAtlasSource_method_get_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_separation:

.. rst-class:: classref-method

|void| **set_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_separation>`

設定位於座標 ``atlas_coords`` 的圖塊的動畫布局中，圖塊的間距（單位為柵格圖塊）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_speed:

.. rst-class:: classref-method

|void| **set_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_speed>`

設定位於座標 ``atlas_coords`` 的圖塊的動畫速度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
