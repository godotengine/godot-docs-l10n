:github_url: hide

.. _class_TileData:

TileData
========

**Успадковує:** :ref:`Object<class_Object>`

Налаштування для однієї плитки в :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Опис
--------

**TileData** Об'єкт представляє окрему плитку в :ref:`TileSet<class_TileSet>`. Зазвичай його редагують за допомогою редактора наборів плиток, але його можна змінити під час виконання за допомогою :ref:`TileMapLayer._tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
------------

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

Сигнали
--------------

.. _class_TileData_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileData_signal_changed>`

При зміні будь-яких властивостей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TileData_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TileData_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_h**\ (\ )

Якщо ``true``, то плитка буде мати її текстуру, що закривається горизонтально.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TileData_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_v**\ (\ )

Якщо ``true``, плитка буде мати її текстуру, що закривається вертикально.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_TileData_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

:ref:`Material<class_Material>` для цього **TileData**. Це може бути :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` для використання шейдера за замовчуванням, або :ref:`ShaderMaterial<class_ShaderMaterial>` для використання користувальницького шейкера.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TileData_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Кольорова модуляція плитки.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_probability:

.. rst-class:: classref-property

:ref:`float<class_float>` **probability** = ``1.0`` :ref:`🔗<class_TileData_property_probability>`

.. rst-class:: classref-property-setget

- |void| **set_probability**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_probability**\ (\ )

Відносна ймовірність даної плитки вибирається при малюнку випадкової плитки.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain** = ``-1`` :ref:`🔗<class_TileData_property_terrain>`

.. rst-class:: classref-property-setget

- |void| **set_terrain**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain**\ (\ )

Ідентифікатор місцевості з рельєфу, який використовується плитка.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain_set:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain_set** = ``-1`` :ref:`🔗<class_TileData_property_terrain_set>`

.. rst-class:: classref-property-setget

- |void| **set_terrain_set**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain_set**\ (\ )

Ідентифікатор місцевості, що використовується плитка.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_texture_origin:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_origin** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileData_property_texture_origin>`

.. rst-class:: classref-property-setget

- |void| **set_texture_origin**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_origin**\ (\ )

Вимкніть позицію, де проводиться плитка.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_transpose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transpose** = ``false`` :ref:`🔗<class_TileData_property_transpose>`

.. rst-class:: classref-property-setget

- |void| **set_transpose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_transpose**\ (\ )

Якщо ``true``, плитка буде відображати трансплантацію, тобто з горизонтальною і вертикальною текстурою УФ.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileData_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Вертикальна точка плити, яка використовується для визначення y-sorted замовлення.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_z_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **z_index** = ``0`` :ref:`🔗<class_TileData_property_z_index>`

.. rst-class:: classref-property-setget

- |void| **set_z_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_index**\ (\ )

Індекс порядку цієї плитки відносно :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TileData_method_add_collision_polygon:

.. rst-class:: classref-method

|void| **add_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_collision_polygon>`

Додає зіткненьому полігону до плитки на даній фізиці TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_add_occluder_polygon:

.. rst-class:: classref-method

|void| **add_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_occluder_polygon>`

Додає багатокутник оклюзії до плитки на шарі оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_one_way_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_one_way_margin>`

Повертаємо односторонній запас (для односторонніх платформ) полігону в індексі ``polygon_index`` для фізичного шару TileSet з індексом ``Layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_points>`

Повертає точки полігону в індексі ``polygon_index`` для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygons_count>`

Повертає кількість полігонів у плитці для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_angular_velocity>`

Повернення постійної кутової швидкості наноситься на об'єкти, що збігаються з цією плиткою.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_linear_velocity>`

Повернення постійної лінійної швидкості наноситься на об'єкти, що збігаються з цією плиткою.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data>`

Повертає значення настроюваних даних для настроюваного рівня даних під назвою ``layer_name``. Щоб перевірити, чи існує спеціальний рівень даних, використовуйте :ref:`has_custom_data()<class_TileData_method_has_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data_by_layer_id:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data_by_layer_id>`

Повертає значення користувацького значення даних для користувацького шару даних з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_navigation_polygon:

.. rst-class:: classref-method

:ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_navigation_polygon>`

Повертає навігаційний полігон плитки для навігаційного шару TileSet з індексом ``layer_id``.

\ ``flip_h``, ``flip_v`` та ``transpose`` дозволяють трансформувати повернутий полігон.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder>`

**Застаріло:** Use :ref:`get_occluder_polygon()<class_TileData_method_get_occluder_polygon>` instead.

Повертає полігон оклюдера плитки для шару оклюзії TileSet з індексом ``layer_id``.

\ ``flip_h``, ``flip_v`` та ``transpose`` дозволяють трансформувати повернутий полігон.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygon:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygon>`

Повертає полігон оклюдера з індексом ``polygon_index`` із шару оклюзії TileSet з індексом ``layer_id``. 

Параметри ``flip_h``, ``flip_v`` і ``transpose`` можуть мати значення ``true`` для перетворення повернутого багатокутника.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygons_count>`

Повертає кількість полігонів оклюдера плитки в шарі оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_get_terrain_peering_bit>`

Повертаємо увагу на те, що у кахельному куточку для даного напрямку ``peering_bit``. Щоб перевірити, що напрямок діє, скористайтеся :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_has_custom_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_has_custom_data>`

Повертає інформацію про існування спеціального рівня даних із назвою ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_collision_polygon_one_way:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_is_collision_polygon_one_way>`

Повертає, чи вказано односторонні зіткнення для полігону за індексом ``polygon_index`` для фізичного шару TileSet з індексом ``Layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_valid_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_is_valid_terrain_peering_bit>`

Повертає, чи є заданий напрямок ``peering_bit`` дійсним для цієї плитки.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_collision_polygon:

.. rst-class:: classref-method

|void| **remove_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_collision_polygon>`

Видаліть полігон в індексі ``polygon_index`` для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_occluder_polygon:

.. rst-class:: classref-method

|void| **remove_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_occluder_polygon>`

Видаляє багатокутник з індексом ``polygon_index`` для шару оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way>`

Увімкнути/вимкнути односторонні зіткнення на полігоні індексу ``polygon_index`` для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way_margin:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way_margin>`

Встановлює односторонній запас (для односторонніх платформ) багатокутника за індексом ``polygon_index`` для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_points:

.. rst-class:: classref-method

|void| **set_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_points>`

Встановлює точки полігону в індексі ``polygon_index`` для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygons_count:

.. rst-class:: classref-method

|void| **set_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygons_count>`

Налаштовує кількість полігонів для фізичного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_angular_velocity:

.. rst-class:: classref-method

|void| **set_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_constant_angular_velocity>`

Встановлює постійний кутовий швидкість. Це не обертається плитка. Ця кутова швидкість наноситься на об'єкти, що об'єднуються з цією плиткою.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_linear_velocity:

.. rst-class:: classref-method

|void| **set_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_TileData_method_set_constant_linear_velocity>`

Налаштовує постійний лінійну швидкість. Це не рухається плитка. Ця лінійна швидкість наноситься на об'єкти, що об'єднуються з цією плиткою. Це корисно для створення конвеєрних стрічок.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data:

.. rst-class:: classref-method

|void| **set_custom_data**\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data>`

Налаштовує значення користувальницьких даних плитки для налаштовуючого шару даних TileSet з назвою ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data_by_layer_id:

.. rst-class:: classref-method

|void| **set_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data_by_layer_id>`

Налаштовує значення користувальницьких даних для налаштовуючого шару даних TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_navigation_polygon:

.. rst-class:: classref-method

|void| **set_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ ) :ref:`🔗<class_TileData_method_set_navigation_polygon>`

Навігаційний полігон для навігаційного шару TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder:

.. rst-class:: classref-method

|void| **set_occluder**\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder>`

**Застаріло:** Use :ref:`set_occluder_polygon()<class_TileData_method_set_occluder_polygon>` instead.

Комплектує оклюцер для шару оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygon:

.. rst-class:: classref-method

|void| **set_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygon>`

Встановлює окклюдер для багатокутника з індексом ``polygon_index`` у шарі оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygons_count:

.. rst-class:: classref-method

|void| **set_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygons_count>`

Встановлює кількість полігонів оклюдера в шарі оклюзії TileSet з індексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_terrain_peering_bit:

.. rst-class:: classref-method

|void| **set_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_terrain_peering_bit>`

Встановлює біт рельєфу плитки для заданого напрямку ``peering_bit``. Щоб перевірити, чи напрямок є коректним, використовуйте :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
