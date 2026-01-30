:github_url: hide

.. _class_TileSetSource:

TileSetSource
=============

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`

向 :ref:`TileSet<class_TileSet>` 资源暴露一组图块。

.. rst-class:: classref-introduction-group

描述
----

向 :ref:`TileSet<class_TileSet>` 资源暴露一组图块。

源中的图块具有索引，索引为两个 ID，分别是坐标 ID（类型为 Vector2i）和备选 ID（类型为 int），名称反映了在 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 中的使用方法。

根据 TileSet 源类型的不同，对这些 ID 的值可能有不同的限制，这就是 **TileSetSource** 基类仅暴露了 getter 的原因。

要遍历 TileSetSource 中暴露的所有图块，你可以首先使用 :ref:`get_tiles_count()<class_TileSetSource_method_get_tiles_count>` 和 :ref:`get_tile_id()<class_TileSetSource_method_get_tile_id>` 遍历坐标 ID，然后使用 :ref:`get_alternative_tiles_count()<class_TileSetSource_method_get_alternative_tiles_count>` 和 :ref:`get_alternative_tile_id()<class_TileSetSource_method_get_alternative_tile_id>` 遍历备选 ID。

\ **警告：**\ 同一个 **TileSetSource** 不能同时属于两个 TileSet。对第二个 :ref:`TileSet<class_TileSet>` 调用 :ref:`TileSet.add_source()<class_TileSet_method_add_source>` 会在第一个 TileSet 中移除该源。

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

方法说明
--------

.. _class_TileSetSource_method_get_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tile_id>`

返回坐标 ID 为 ``atlas_coords`` 的图块的索引为 ``index`` 的备选 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_alternative_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tiles_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tiles_count>`

返回坐标 ID 为 ``atlas_coords`` 的图块的备选图块数量。

\ :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 返回的数量至少为 1，因为备选列表中始终存在 ID 为 0 的基础图块。

如果给定的坐标处没有图块，则返回 -1。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tile_id:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tile_id>`

返回索引为 ``index`` 的图块的图块坐标 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tiles_count**\ (\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tiles_count>`

返回该图集源中定义的图块数量（不含备选图块）。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_alternative_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_alternative_tile>`

返回位于坐标 ``atlas_coords`` 的基础图块是否存在 ID 为 ``alternative_tile`` 的备选图块。

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_tile>`

返回该图集中是否存在坐标 ID 为 ``atlas_coords`` 的图块。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
