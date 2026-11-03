:github_url: hide

.. _class_TileSetScenesCollectionSource:

TileSetScenesCollectionSource
=============================

**繼承：** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以圖塊的形式向 :ref:`TileSet<class_TileSet>` 資源暴露一組場景。

.. rst-class:: classref-introduction-group

說明
----

當放置在 :ref:`TileMapLayer<class_TileMapLayer>` 上時，來自 **TileSetScenesCollectionSource** 的圖塊將自動在 TileMapLayer 中單元格的位置上實例化相關場景。

\ :ref:`TileMapLayer<class_TileMapLayer>` 進入樹後，會在影格末尾將這些場景實例化為其子節點（延遲建立）。如果在 :ref:`TileMapLayer<class_TileMapLayer>` 中新增/移除已經在樹內的場景圖塊，\ :ref:`TileMapLayer<class_TileMapLayer>` 將自動實例化/釋放相應的場景。

\ **注意：**\ 場景圖塊佔用同一個圖塊槽，使用備用圖塊 ID 來標識場景索引。\ :ref:`TileSetSource.get_tiles_count()<class_TileSetSource_method_get_tiles_count>` 將始終回傳 ``1``\ 。使用 :ref:`get_scene_tiles_count()<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>` 取得 **TileSetScenesCollectionSource** 中的場景數量。

如果想在 :ref:`TileMapLayer<class_TileMapLayer>` 中尋找給定圖塊的場景路徑，請使用此程式碼：


.. tabs::

 .. code-tab:: gdscript

    var source_id = tile_map_layer.get_cell_source_id(Vector2i(x, y))
    if source_id > -1:
        var scene_source = tile_map_layer.tile_set.get_source(source_id)
        if scene_source is TileSetScenesCollectionSource:
            var alt_id = tile_map_layer.get_cell_alternative_tile(Vector2i(x, y))
            # 分配的 PackedScene。
            var scene = scene_source.get_scene_tile_scene(alt_id)

 .. code-tab:: csharp

    int sourceId = tileMapLayer.GetCellSourceId(new Vector2I(x, y));
    if (sourceId > -1)
    {
        TileSetSource source = tileMapLayer.TileSet.GetSource(sourceId);
        if (source is TileSetScenesCollectionSource sceneSource)
        {
            int altId = tileMapLayer.GetCellAlternativeTile(new Vector2I(x, y));
            // 分配的 PackedScene。
            PackedScene scene = sceneSource.GetSceneTileScene(altId);
        }
    }



.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`create_scene_tile<class_TileSetScenesCollectionSource_method_create_scene_tile>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ )              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_next_scene_tile_id<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tile_id<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`\ (\ index\: :ref:`int<class_int>`\ )                                                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>` | :ref:`get_scene_tile_scene<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tiles_count<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`\ (\ )                                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_scene_tile_id<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_scene_tile<class_TileSetScenesCollectionSource_method_remove_scene_tile>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_id<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_scene<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileSetScenesCollectionSource_method_create_scene_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_scene_tile**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_create_scene_tile>`

從給定的場景建立基於場景的圖塊。

返回新生成的唯一 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_next_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_scene_tile_id**\ (\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`

返回後續呼叫 :ref:`create_scene_tile()<class_TileSetScenesCollectionSource_method_create_scene_tile>` 時會返回的場景 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`

返回 ID 為 ``id`` 的場景圖塊是否在編輯器中顯示占點陣圖。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`

返回索引為 ``index`` 的場景圖塊的場景圖塊 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_scene:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`

返回 ID 為 ``id`` 的場景圖塊的 :ref:`PackedScene<class_PackedScene>` 資源。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tiles_count**\ (\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`

返回該 TileSet 源中場景圖塊的數量。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_has_scene_tile_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_scene_tile_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`

返回該 TileSet 源是否包含 ID 為 ``id`` 的場景圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_remove_scene_tile:

.. rst-class:: classref-method

|void| **remove_scene_tile**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_remove_scene_tile>`

移除 ID 為 ``id`` 的場景圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder:

.. rst-class:: classref-method

|void| **set_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`

設定 ID 為 ``id`` 的場景圖塊是否應該在編輯器中顯示為預留位置。對不可見的場景可能有用。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_id:

.. rst-class:: classref-method

|void| **set_scene_tile_id**\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`

將場景圖塊的 ID 從 ``id`` 改為 ``new_id``\ 。如果已經存在 ID 為 ``new_id`` 的圖塊則會失敗。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_scene:

.. rst-class:: classref-method

|void| **set_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`

將 :ref:`PackedScene<class_PackedScene>` 資源分配給 ID 為 ``id`` 的場景圖塊。如果該場景擴充的不是 :ref:`CanvasItem<class_CanvasItem>` 則會失敗，因為將場景放置到 :ref:`TileMapLayer<class_TileMapLayer>` 上需要位置屬性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
