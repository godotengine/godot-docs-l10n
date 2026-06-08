:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Node для 2D кахельних карт.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол для 2D-карт на основі плиток. **TileMapLayer** використовує :ref:`TileSet<class_TileSet>`, який містить список плиток, що використовуються для створення карт на основі сітки. На відміну від вузла :ref:`TileMap<class_TileMap>`, який є застарілим, **TileMapLayer** має лише один шар плиток. Ви можете використовувати кілька **TileMapLayer** для досягнення того ж результату, що й вузол :ref:`TileMap<class_TileMap>`.

З міркувань продуктивності всі оновлення TileMap пакетно об'єднуються в кінці кадру. Зокрема, це означає, що плитки сцени з :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` ініціалізуються після їх батьківського елемента. Це ставиться в чергу лише всередині дерева сцен.

Щоб примусово виконати оновлення раніше, викличте :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Примітка:** З міркувань продуктивності та сумісності координати, серіалізовані **TileMapLayer**, обмежені 16-бітними знаковими цілими числами, тобто діапазон координат X та Y становить від ``-32768`` до ``32767``. Під час збереження даних тайлів тайли поза цим діапазоном переносяться.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання TileMaps (Карти Плиток) <../tutorials/2d/using_tilemaps>`

- `Демонстрація 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

- `2D ізометрична демонстрація <https://godotengine.org/asset-library/asset/2718>`__

- `2D Hexagonal Демо <https://godotengine.org/asset-library/asset/2717>`__

- `2D Grid-навігація з AStarGrid2D Демонстрація <https://godotengine.org/asset-library/asset/2723>`__

- `2Д Рольова гра (RPG) Демо <https://godotengine.org/asset-library/asset/2729>`__

- `Демонстрація двовимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2719>`__

- `Демонстрація двовимірних динамічних шарів TileMap <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`collision_enabled<class_TileMapLayer_property_collision_enabled>`                   | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` | :ref:`collision_visibility_mode<class_TileMapLayer_property_collision_visibility_mode>`   | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`enabled<class_TileMapLayer_property_enabled>`                                       | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`navigation_enabled<class_TileMapLayer_property_navigation_enabled>`                 | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` | :ref:`navigation_visibility_mode<class_TileMapLayer_property_navigation_visibility_mode>` | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`occlusion_enabled<class_TileMapLayer_property_occlusion_enabled>`                   | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`           | ``16``                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>`       | ``16``                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                     | :ref:`tile_map_data<class_TileMapLayer_property_tile_map_data>`                           | ``PackedByteArray()`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TileSet<class_TileSet>`                                     | :ref:`tile_set<class_TileMapLayer_property_tile_set>`                                     |                       |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`use_kinematic_bodies<class_TileMapLayer_property_use_kinematic_bodies>`             | ``false``             |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`x_draw_order_reversed<class_TileMapLayer_property_x_draw_order_reversed>`           | ``false``             |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`y_sort_origin<class_TileMapLayer_property_y_sort_origin>`                           | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_tile_data_runtime_update<class_TileMapLayer_private_method__tile_data_runtime_update>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_update_cells<class_TileMapLayer_private_method__update_cells>`\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_use_tile_data_runtime_update<class_TileMapLayer_private_method__use_tile_data_runtime_update>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual|                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_TileMapLayer_method_clear>`\ (\ )                                                                                                                                                                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`erase_cell<class_TileMapLayer_method_erase_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`fix_invalid_tiles<class_TileMapLayer_method_fix_invalid_tiles>`\ (\ )                                                                                                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapLayer_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapLayer_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapLayer_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileData<class_TileData>`                              | :ref:`get_cell_tile_data<class_TileMapLayer_method_get_cell_tile_data>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_coords_for_body_rid<class_TileMapLayer_method_get_coords_for_body_rid>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_TileMapLayer_method_get_navigation_map>`\ (\ ) |const|                                                                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_neighbor_cell<class_TileMapLayer_method_get_neighbor_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileMapPattern<class_TileMapPattern>`                  | :ref:`get_pattern<class_TileMapLayer_method_get_pattern>`\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ )                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_surrounding_cells<class_TileMapLayer_method_get_surrounding_cells>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapLayer_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells_by_id<class_TileMapLayer_method_get_used_cells_by_id>`\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const|                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`                                  | :ref:`get_used_rect<class_TileMapLayer_method_get_used_rect>`\ (\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_body_rid<class_TileMapLayer_method_has_body_rid>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_flipped_h<class_TileMapLayer_method_is_cell_flipped_h>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_flipped_v<class_TileMapLayer_method_is_cell_flipped_v>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_transposed<class_TileMapLayer_method_is_cell_transposed>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`local_to_map<class_TileMapLayer_method_local_to_map>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`map_pattern<class_TileMapLayer_method_map_pattern>`\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ )                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`map_to_local<class_TileMapLayer_method_map_to_local>`\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`notify_runtime_tile_data_update<class_TileMapLayer_method_notify_runtime_tile_data_update>`\ (\ )                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapLayer_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ )                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cells_terrain_connect<class_TileMapLayer_method_set_cells_terrain_connect>`\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cells_terrain_path<class_TileMapLayer_method_set_cells_terrain_path>`\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ )        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_TileMapLayer_method_set_navigation_map>`\ (\ map\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_pattern<class_TileMapLayer_method_set_pattern>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ )                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`update_internals<class_TileMapLayer_method_update_internals>`\ (\ )                                                                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

Випробувано, коли це зміни властивостей **TileMapLayer**. Це включає в себе модифіковані клітини, властивості, або зміни, внесені до його призначення :ref:`TileSet<class_TileSet>`.

\ **Примітка:** Цей сигнал може бути вказаний дуже часто, коли пакетне моделювання **TileMapLayer**. Уникайте виконання комплексної обробки в підключеній функції і розглянемо затримку його до кінця кадру замість (тобто виклику :ref:`Object.call_deferred()<class_Object_method_call_deferred>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Приховайте колізії або форми налагодження навігації в редакторі та використовуйте налаштування налагодження, щоб визначити їх видимість у грі (наприклад, :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` або :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Завжди приховує зіткнення або навігаційні форми.

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Завжди показати зіткнення або навігаційні форми.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

Увімкнути або вимкнути зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Показати або сховати форму зіткнення **TileMapLayer**. Якщо встановити до :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, це залежить від параметрів зіткненого з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Якщо ``false``, вимкнено це **TileMapLayer** повністю (робота, зіткнення, навігація, сцена плитки тощо)

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

Якщо увімкнено ``true``, навігаційні області.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

Показати або приховати навігаційні сітки **TileMapLayer**. Якщо встановити на :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, це залежить від параметрів навігаційної дебюги.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

Увімкнути або вимкнути блокування світла.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

Розмір фізичного квадранта **TileMapLayer**. У фізичному квадранті клітинки з подібними фізичними властивостями групуються разом, а їхні форми зіткнень об'єднуються. :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` визначає довжину сторони квадрата в системі координат карти, що утворює квадрант. Таким чином, розмір квадранта за замовчуванням групує разом ``16 * 16 = 256`` плиток.

\ **Примітка:** Оскільки квадранти створюються відповідно до системи координат карти, «квадратна форма» квадранта може не виглядати як квадрат у локальній системі координат **TileMapLayer**.

\ **Примітка:** Це впливає на значення, що повертається методом :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>`. Вищі значення зроблять цю функцію менш точною. Щоб отримати точні координати клітинок, потрібно встановити :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` на ``1``, що вимикає фрагментацію фізики.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

Розмір квадранта візуалізації **TileMapLayer**. Квадрант – це група плиток, які потрібно намалювати разом на одному елементі полотна для цілей оптимізації. :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` визначає довжину сторони квадрата в системі координат карти, що утворює квадрант. Таким чином, розмір квадранта за замовчуванням групує плитки ``16 * 16 = 256``\ 

Розмір квадранта не застосовується до **TileMapLayer** з сортуванням по осі Y, оскільки в цьому випадку плитки групуються за позицією Y.

\ **Примітка:** Оскільки квадранти створюються відповідно до системи координат карти, «квадратна форма» квадранта може не виглядати як квадрат у локальній системі координат **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

Сирі дані черепиці як байтовий масив.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

:ref:`TileSet<class_TileSet>` використовується цим шаром. Тут зберігаються текстури, зіткнення та додаткова поведінка всіх доступних плиток.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

Якщо ``true``, це **TileMapLayer** форми зіткнення будуть миттєві як kinematic тіл. Це може знадобитися для переміщення **TileMapLayer** вузлів (тобто рухомих платформ).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

Якщо :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>` увімкнено, встановлення значення ``true`` змінить порядок малювання плиток на осі X.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Це значення Y-sort походження до кожної плитки Y-sort значення походження. Це дозволяє, наприклад, підробити різний рівень висоти. Це може бути корисним для ігор з видом на вершину.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

Викликається з об'єктом :ref:`TileData<class_TileData>`, який буде використано внутрішньо **TileMapLayer**, що дозволяє його модифікацію під час виконання.

Цей метод викликається лише тоді, коли реалізовано метод :ref:`use_tile_data_runtime_update()<class_TileMapLayer_method_use_tile_data_runtime_update>`, і повертає ``true`` для заданого тайла ``coords``.

\ **Попередження:** Підресурси об'єкта ``tile_data`` такі ж, як і в TileSet. Їх модифікація може вплинути на весь TileSet. Натомість переконайтеся, що ці ресурси продубльовані.

\ **Примітка:** Якщо властивості об'єкта ``tile_data`` змінюються з часом, використовуйте метод :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>`, щоб повідомити **TileMapLayer** про необхідність оновлення.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

Викликається, коли клітинки **TileMapLayer** потребують внутрішнього оновлення. Це оновлення може бути викликано зміною окремих клітинок або зміною в :ref:`tile_set<class_TileMapLayer_property_tile_set>` (у результаті чого всі клітинки ставляться в чергу для оновлення). Перший виклик цієї функції завжди призначений для ініціалізації всіх клітинок **TileMapLayer**. ``coords`` містить координати всіх змінених клітинок, приблизно в тому порядку, в якому вони були змінені. ``forced_cleanup`` має значення ``true``, коли внутрішні елементи **TileMapLayer** мають бути повністю очищені. Це той випадок, коли: 

- Шар відключено; 

- Шар не видно; 

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` має значення ``null``; 

- Вузол видаляється з дерева; 

- Вузол звільнено. 

Зауважте, що будь-яке внутрішнє оновлення, яке відбувається під час перевірки однієї з цих умов, вважається «очищенням». Дивіться також :ref:`update_internals()<class_TileMapLayer_method_update_internals>`. 

\ **Попередження:** Реалізація цього методу може погіршити продуктивність **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

Поверніть ``true``, якщо плитка на координатах ``coords`` вимагає оновлення робочого часу.

\ **Налаштування:** Переконайтеся, що ця функція тільки повертає ``true`` при необхідності. Будь-яка кахельна плитка, оброблена в режимі runtime без потреби в ній, буде на увазі значне виконання штрафу.

\ **Примітка:** Якщо результат цієї функції слід змінити, скористайтеся :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` для позначення **TileMapLayer** він потребує оновлення.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

Очищає всі клітини.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

Використовуємо клітинку в координатах ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

Очистити клітинки, що містять плитку, яка не існує в :ref:`tile_set<class_TileMapLayer_property_tile_set>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

Повертає альтернативний ідентифікатор плитки в координатах ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

Повертаємо кахельну плитку координатами ID комірки на координатах ``coords``. Повертає ``Vector2i(-1, -1)``, якщо клітинка не існує.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

Повертає ідентифікатор кахельного джерела в координатах ``coords``. Повертає ``-1``, якщо клітина не існує.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

Повертає об'єкт :ref:`TileData<class_TileData>`, пов'язаний із заданою коміркою, або ``null``, якщо комірка не існує або не є :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

::

    func get_clicked_tile_power():
        var clicked_cell = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
        var data = tile_map_layer.get_cell_tile_data(clicked_cell)
        if data:
            return data.get_custom_data("power")
        else:
            return 0

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_coords_for_body_rid:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_coords_for_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_coords_for_body_rid>`

Повертає координати фізичного квадранта (див. :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`) для заданого фізичного тіла :ref:`RID<class_RID>`. Такий :ref:`RID<class_RID>` можна отримати з :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>` при зіткненні з плиткою.

\ **Примітка:** Вищі значення :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` зроблять цю функцію менш точною. Щоб отримати точні координати комірки, потрібно встановити :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` на ``1``, що вимикає фрагментацію фізики.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

Повернення :ref:`RID<class_RID>` навігації :ref:`NavigationServer2D<class_NavigationServer2D>`, що використовується цим **TileMapLayer**.

За замовчуванням це повертає навігацію за замовчуванням :ref:`World2D<class_World2D>`, якщо надана спеціальна карта :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

Повертає сусідню комірку з координатами ``coords``, що визначаються напрямком ``neighbor``. Цей метод враховує різні макети, які може приймати TileMap.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

Створює та повертає новий :ref:`TileMapPattern<class_TileMapPattern>` з даного масиву клітин. Дивитись також :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

Повертає список усіх сусідніх комірок до клітинки в ``coords``. Будь-яка сусідня клітинка є такою, що торкається країв, тому для квадратної клітинки буде повернуто 4 клітинки, для шестикутної – 6 клітинок.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

Повертає масив :ref:`Vector2i<class_Vector2i>` з положеннями всіх клітин, що містять плитку. Клітка вважається порожньою, якщо її ідентифікатор джерела дорівнює ``-1``, його атласний координаційний ідентифікатор ``Vector2(-1, -1)`` і його альтернативний ідентифікатор ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

Повертає масив :ref:`Vector2i<class_Vector2i>` з положеннями всіх клітин, що містять плитку. Тілі можуть бути фільтровані відповідно до їх джерела (``джерело_id``), їх атласні координати (``atlas_coords``), або альтернативні ідентифікатори (``Alternative_tile``).

Якщо параметр має значення, встановлене до за замовчуванням, цей параметр не використовується для фільтрування комірки. Таким чином, якщо всі параметри мають відповідні значення за замовчуванням, цей метод повертає той же результат, як :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>`.

Клітка вважається порожньою, якщо її ідентифікатор джерела дорівнює ``-1``, його атласний координаційний ідентифікатор ``Vector2(-1, -1)`` і його альтернативний ідентифікатор ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

Повертає прямокутник, який закриває використовувану (не спрагу) плитку карти.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

Повертає, чи надана ``параме тіло`` :ref:`RID<class_RID>` належить до одного з цих **TileMapLayer** клітин.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

Повертає ``true``, якщо клітинку з координатами ``coords`` перевернуто горизонтально. Результат справедливий лише для джерел атласу.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

Повертає ``true``, якщо клітинку з координатами ``coords`` перевернуто вертикально. Результат справедливий лише для джерел атласу.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

Повертає ``true``, якщо клітинку з координатами ``coords`` транспоновано. Результат справедливий лише для джерел атласу.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

Повертає координати на карті комірки, що містить заданий ``local_position``. Якщо ``local_position`` знаходиться в глобальних координатах, перед передачею його цьому методу розгляньте можливість використання :ref:`Node2D.to_local()<class_Node2D_method_to_local>`. Див. також :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

Повертає для заданих координат ``coords_in_pattern`` у :ref:`TileMapPattern<class_TileMapPattern>` відповідні координати комірки, якщо візерунок було вставлено в координати ``position_in_tilemap`` (див. :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`). Це зіставлення є обов'язковим, оскільки у формах плиток з половинним зміщенням зіставлення може не працювати шляхом обчислення ``position_in_tile_map + coords_in_pattern``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

Повертає центральне положення комірки в локальному координатному просторі **TileMapLayer**. Щоб перетворити повернуті значення у глобальні координати, скористайтеся :ref:`Node2D.to_global()<class_Node2D_method_to_global>`. Дивись також :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`.

\ **Примітка:** Це може не відповідати візуальному положенні плитки, тобто ігнорувати :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` властивість індивідуальної плитки.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

Повідомляє вузол **TileMapLayer**, що виклики методу :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` або :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` призведуть до різних результатів. Таким чином, це ініціює оновлення **TileMapLayer**.

\ **Попередження:** Оновлення **TileMapLayer** є обчислювально ресурсоємним і може вплинути на продуктивність. Спробуйте обмежити кількість викликів цієї функції, щоб уникнути непотрібного оновлення.

\ **Примітка:** Це не ініціює пряме оновлення **TileMapLayer**, оновлення буде виконано в кінці кадру як завжди (якщо ви не викличете метод :ref:`update_internals()<class_TileMapLayer_method_update_internals>`).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

Налаштовує ідентифікатори плитки для клітинки при координатах ``пармові коорди``. Кожна плитка :ref:`TileSet<class_TileSet>` виділяється за допомогою трьох частин:

- Ідентифікатор джерела ``джерело_id`` визначає ідентифікатор :ref:`TileSetSource<class_TileSetSource>`. Див. :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`,

до Atlas координатний ідентифікатор ``atlas_coords`` визначає координати плитки в атласі (якщо джерело є :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`). Для :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` він завжди повинен бути ``Vector2i(0, 0)``,

до Альтернативний ідентифікатор плитки ``alternative_tile`` визначає альтернативну черепицю в атласі (якщо джерело є :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`), а також місце для :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`.

Якщо ``джерело_id`` встановлюється до ``-1``, ``atlas_coords`` до ``Vector2i(-1, -1)``, або ``альтернатив_tile`` до ``-1``, клітинка буде вилучена. Стирання клітинки отримує **all** своїх ідентифікаторів автоматично встановлюються до своїх відповідних недійсних значень, а саме ``-1``, ``Vector2i(-1, -1)`` і ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

Оновіть усі клітинки в масиві координат ``cell``, щоб вони використовували заданий ``terrain`` для заданого ``terrain_set``. Якщо оновлена клітинка має такий самий рельєф, що й одна з її сусідніх клітинок, ця функція намагається об’єднати дві. Ця функція може оновлювати сусідні плитки, якщо потрібно створити правильні переходи місцевості. 

Якщо ``ignore_empty_terrains`` має значення ``true``, порожні ландшафти ігноруватимуться під час спроби знайти плитку, яка найкраще підходить для заданих обмежень ландшафту. 

\ **Примітка.** Для правильної роботи цей метод вимагає, щоб TileSet **TileMapLayer** мав місцевості, налаштовані з усіма необхідними комбінаціями місцевості. Інакше це може призвести до неочікуваних результатів.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

Оновіть усі клітинки в масиві координат ``path``, щоб вони використовували заданий ``terrain`` для заданого ``terrain_set``. Функція також з’єднає дві послідовні комірки на шляху з однаковою місцевістю. Ця функція може оновлювати сусідні плитки, якщо потрібно створити правильні переходи місцевості. 

Якщо ``ignore_empty_terrains`` має значення ``true``, порожні ландшафти ігноруватимуться під час спроби знайти плитку, яка найкраще підходить для заданих обмежень ландшафту. 

\ **Примітка.** Для правильної роботи цей метод вимагає, щоб TileSet **TileMapLayer** мав місцевості, налаштовані з усіма необхідними комбінаціями місцевості. Інакше це може призвести до неочікуваних результатів.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

Настроювання на замовлення ``map`` як :ref:`NavigationServer2D<class_NavigationServer2D>` навігаційна карта. Якщо не встановлено, використовує навігацію за замовчуванням :ref:`World2D<class_World2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

Вставляє :ref:`TileMapPattern<class_TileMapPattern>` у вказану ``position`` на карті плиток. Див. також :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

Тригери прямого оновлення **TileMapLayer**. Зазвичай, зателефонуйте цю функцію не потрібно, оскільки **TileMapLayer** оновлення вузлів автоматично при зміні одного з його властивостей або клітин.

Однак, з причин виконання, ці оновлення зараховуються і затримуються до кінця каркасу. Виклик цієї функції змусить **TileMapLayer** оновити прямо зараз.

\ **Налаштування:** Оновлення **TileMapLayer** обчислюється дорого і може впливати на продуктивність. Спробуйте обмежити кількість оновлень і скільки плитки вони впливають.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
