:github_url: hide

.. _class_TileMapPattern:

TileMapPattern
==============

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放 :ref:`TileMap<class_TileMap>` 的圖案，用於複製貼上。

.. rst-class:: classref-introduction-group

說明
----

這個資源存放的是一組單元格，能夠協助進行 :ref:`TileMap<class_TileMap>` 的批量操作。

圖案始終從 ``(0, 0)`` 座標開始，不能存在負數座標的單元格。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapPattern_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapPattern_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                         |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapPattern_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_size<class_TileMapPattern_method_get_size>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapPattern_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_cell<class_TileMapPattern_method_has_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_empty<class_TileMapPattern_method_is_empty>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_cell<class_TileMapPattern_method_remove_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ )                                                                                                              |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapPattern_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_TileMapPattern_method_set_size>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileMapPattern_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_alternative_tile>`

返回位於 ``coords`` 的儲存格的備選圖塊 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_atlas_coords>`

返回位於 ``coords`` 的儲存格的圖塊合集座標 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_source_id>`

返回位於 ``coords`` 的儲存格的圖塊源 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_size>`

返回該圖案的大小（單位為儲存格）。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_used_cells>`

返回該圖案中使用的儲存格座標列表。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_has_cell:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_has_cell>`

返回該圖案是否在給定座標處有圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_is_empty>`

返回該圖案是否為空。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_remove_cell:

.. rst-class:: classref-method

|void| **remove_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileMapPattern_method_remove_cell>`

移除給定座標的儲存格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileMapPattern_method_set_cell>`

設定位於 ``coords`` 的儲存格的圖塊識別字。見 :ref:`TileMap.set_cell()<class_TileMap_method_set_cell>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapPattern_method_set_size>`

設定圖案的大小。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
