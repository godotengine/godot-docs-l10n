:github_url: hide

.. _class_TileSetScenesCollectionSource:

TileSetScenesCollectionSource
=============================

**继承：** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

以图块的形式向 :ref:`TileSet<class_TileSet>` 资源暴露一组场景。

.. rst-class:: classref-introduction-group

描述
----

当放置在 :ref:`TileMapLayer<class_TileMapLayer>` 上时，来自 **TileSetScenesCollectionSource** 的图块将自动在 TileMapLayer 中单元格的位置上实例化相关场景。

\ :ref:`TileMapLayer<class_TileMapLayer>` 进入树后，会在帧末尾将这些场景实例化为其子节点（延迟创建）。如果在 :ref:`TileMapLayer<class_TileMapLayer>` 中添加/移除已经在树内的场景图块，\ :ref:`TileMapLayer<class_TileMapLayer>` 将自动实例化/释放相应的场景。

\ **注意：**\ 场景图块占用同一个图块槽，使用备用图块 ID 来标识场景索引。\ :ref:`TileSetSource.get_tiles_count()<class_TileSetSource_method_get_tiles_count>` 将始终返回 ``1``\ 。使用 :ref:`get_scene_tiles_count()<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>` 获取 **TileSetScenesCollectionSource** 中的场景数量。

如果想在 :ref:`TileMapLayer<class_TileMapLayer>` 中查找给定图块的场景路径，请使用此代码：


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

方法说明
--------

.. _class_TileSetScenesCollectionSource_method_create_scene_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_scene_tile**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_create_scene_tile>`

从给定的场景创建基于场景的图块。

返回新生成的唯一 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_next_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_scene_tile_id**\ (\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`

返回后续调用 :ref:`create_scene_tile()<class_TileSetScenesCollectionSource_method_create_scene_tile>` 时会返回的场景 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`

返回 ID 为 ``id`` 的场景图块是否在编辑器中显示占位图。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`

返回索引为 ``index`` 的场景图块的场景图块 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_scene:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`

返回 ID 为 ``id`` 的场景图块的 :ref:`PackedScene<class_PackedScene>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tiles_count**\ (\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`

返回该 TileSet 源中场景图块的数量。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_has_scene_tile_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_scene_tile_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`

返回该 TileSet 源是否包含 ID 为 ``id`` 的场景图块。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_remove_scene_tile:

.. rst-class:: classref-method

|void| **remove_scene_tile**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_remove_scene_tile>`

移除 ID 为 ``id`` 的场景图块。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder:

.. rst-class:: classref-method

|void| **set_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`

设置 ID 为 ``id`` 的场景图块是否应该在编辑器中显示为占位符。对不可见的场景可能有用。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_id:

.. rst-class:: classref-method

|void| **set_scene_tile_id**\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`

将场景图块的 ID 从 ``id`` 改为 ``new_id``\ 。如果已经存在 ID 为 ``new_id`` 的图块则会失败。

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_scene:

.. rst-class:: classref-method

|void| **set_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`

将 :ref:`PackedScene<class_PackedScene>` 资源分配给 ID 为 ``id`` 的场景图块。如果该场景扩展的不是 :ref:`CanvasItem<class_CanvasItem>` 则会失败，因为将场景放置到 :ref:`TileMapLayer<class_TileMapLayer>` 上需要位置属性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
