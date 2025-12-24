:github_url: hide

.. _class_TileSetSource:

TileSetSource
=============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`

向 :ref:`TileSet<class_TileSet>` 資源暴露一組圖塊。

.. rst-class:: classref-introduction-group

說明
----

向 :ref:`TileSet<class_TileSet>` 資源暴露一組圖塊。

源中的圖塊具有索引，索引為兩個 ID，分別是座標 ID（型別為 Vector2i）和備選 ID（型別為 int），名稱反映了在 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 中的使用方法。

根據 TileSet 源型別的不同，對這些 ID 的值可能有不同的限制，這就是 **TileSetSource** 基底類別僅暴露了 getter 的原因。

要走訪 TileSetSource 中暴露的所有圖塊，你可以首先使用 :ref:`get_tiles_count()<class_TileSetSource_method_get_tiles_count>` 和 :ref:`get_tile_id()<class_TileSetSource_method_get_tile_id>` 走訪座標 ID，然後使用 :ref:`get_alternative_tiles_count()<class_TileSetSource_method_get_alternative_tiles_count>` 和 :ref:`get_alternative_tile_id()<class_TileSetSource_method_get_alternative_tile_id>` 走訪備選 ID。

\ **警告：**\ 同一個 **TileSetSource** 不能同時屬於兩個 TileSet。對第二個 :ref:`TileSet<class_TileSet>` 呼叫 :ref:`TileSet.add_source()<class_TileSet_method_add_source>` 會在第一個 TileSet 中移除該源。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tile_id<class_TileSetSource_method_get_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const|      |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tiles_count<class_TileSetSource_method_get_alternative_tiles_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_tile_id<class_TileSetSource_method_get_tile_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tiles_count<class_TileSetSource_method_get_tiles_count>`\ (\ ) |const|                                                                                                     |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alternative_tile<class_TileSetSource_method_has_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_tile<class_TileSetSource_method_has_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                   |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileSetSource_method_get_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tile_id>`

返回座標 ID 為 ``atlas_coords`` 的圖塊的索引為 ``index`` 的備選 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_alternative_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tiles_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tiles_count>`

返回座標 ID 為 ``atlas_coords`` 的圖塊的備選圖塊數量。

\ :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 返回的數量至少為 1，因為備選列表中始終存在 ID 為 0 的基礎圖塊。

如果給定的座標處沒有圖塊，則返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tile_id:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tile_id>`

返回索引為 ``index`` 的圖塊的圖塊座標 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tiles_count**\ (\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tiles_count>`

返回該合集源中定義的圖塊數量（不含備選圖塊）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_alternative_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_alternative_tile>`

返回位於座標 ``atlas_coords`` 的基礎圖塊是否存在 ID 為 ``alternative_tile`` 的備選圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_tile>`

返回該合集中是否存在座標 ID 為 ``atlas_coords`` 的圖塊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
