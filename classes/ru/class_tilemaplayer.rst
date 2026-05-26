:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел для 2D-карт на основе плиток.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел для 2D-карт на основе тайлов. **TileMapLayer** использует :ref:`TileSet<class_TileSet>`, содержащий список плиток, которые используются для создания карт на основе сетки. В отличие от узла :ref:`TileMap<class_TileMap>`, который устарел, **TileMapLayer** имеет только один слой плиток. Вы можете использовать несколько **TileMapLayer** для достижения того же результата, что и узел :ref:`TileMap<class_TileMap>`.

Из соображений производительности все обновления TileMap группируются в конце кадра. Это означает, что тайлы сцены из :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` инициализируются после своего родительского элемента. Они ставятся в очередь только внутри дерева сцены.

Чтобы принудительно выполнить обновление раньше, вызовите :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Примечание:** Для повышения производительности и совместимости координаты, сериализуемые **TileMapLayer**, ограничены 16-битными знаковыми целыми числами, то есть диапазон координат X и Y составляет от ``-32768`` до ``32767``. При сохранении данных, тайлы, выходящие за этот диапазон, переносятся.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование тайловых карт <../tutorials/2d/using_tilemaps>`

- `Демоверсия 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

- `Изометрическая 2D-демо <https://godotengine.org/asset-library/asset/2718>`__

- `2D демонстрация шестиугольных форм <https://godotengine.org/asset-library/asset/2717>`__

- `Демонстрация навигации на основе 2D-сетки с помощью AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

- `Демо 2D ролевой игры (РПГ) <https://godotengine.org/asset-library/asset/2729>`__

- `2D Kinematic Character Дэмо <https://godotengine.org/asset-library/asset/2719>`__

- `Демонстрация 2D-динамических слоев TileMap <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
--------------

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

Выдается при изменении свойств этого **TileMapLayer**. Сюда входят измененные ячейки, свойства или изменения, внесенные в назначенный ему :ref:`TileSet<class_TileSet>`.

\ **Примечание:** Этот сигнал может выдаваться очень часто при пакетном изменении **TileMapLayer**. Избегайте выполнения сложной обработки в подключенной функции и рассмотрите возможность отсрочки ее до конца кадра (т. е. вызова :ref:`Object.call_deferred()<class_Object_method_call_deferred>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Скройте формы отладки столкновений или навигации в редакторе и используйте настройки отладки, чтобы определить их видимость в игре (например, :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` или :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Всегда скрывайте формы отладки столкновений или навигации.

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Всегда показывать формы отладки столкновений или навигации.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

Включить или отключить столкновения.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Показать или скрыть формы столкновений **TileMapLayer**. Если установлено значение :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, это зависит от настроек отладки столкновений.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Если ``false``, полностью отключает этот **TileMapLayer** (рендеринг, столкновения, навигацию, тайлы сцены и т. д.)

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

Если ``true``, области навигации включены.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

Показать или скрыть навигационные сетки **TileMapLayer**. Если установлено значение :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, это зависит от настроек отладки навигации показа.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

Включить или отключить окклюзию света.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

Размер физического квадранта **TileMapLayer**. Внутри физического квадранта ячейки со схожими физическими свойствами группируются вместе, и их формы столкновений объединяются. :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` определяет длину стороны квадрата в системе координат карты, которая образует квадрант. Таким образом, размер квадранта по умолчанию группирует ``16 * 16 = 256`` тайлов.

\ **Примечание:** Поскольку квадранты создаются в соответствии с системой координат карты, «квадратная форма» квадранта может не выглядеть как квадрат в локальной системе координат **TileMapLayer**.

\ **Примечание:** Это влияет на значение, возвращаемое :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>`. Более высокие значения сделают эту функцию менее точной. Чтобы получить точные координаты ячейки, необходимо установить параметр :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` равным ``1``, что отключает разбиение физических ячеек на блоки.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

Размер квадранта рендеринга **TileMapLayer**. Квадрант — это группа тайлов, которые нужно нарисовать вместе на одном элементе холста в целях оптимизации. :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` определяет длину стороны квадрата в системе координат карты, которая образует квадрант. Таким образом, размер квадранта по умолчанию группирует вместе ``16 * 16 = 256`` тайлов.

Размер квадранта не применяется к отсортированному по Y **TileMapLayer**, так как в этом случае тайлы группируются по положению Y.

\ **Примечание:** Поскольку квадранты создаются в соответствии с системой координат карты, «квадратная форма» квадранта может не выглядеть как квадрат в локальной системе координат **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

Необработанные данные карты плиток в виде массива байтов.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

:ref:`TileSet<class_TileSet>`, используемый этим слоем. Текстуры, столкновения и дополнительное поведение всех доступных плиток хранятся здесь.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

Если ``true``, то формы столкновений **TileMapLayer** будут инстанцированы как кинематические тела. Это может понадобиться для перемещения узлов **TileMapLayer** (т. е. перемещения платформ).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

Если :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>` включен, установка этого параметра в ``true`` изменит порядок отрисовки плиток на оси X на обратный.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Это значение Y-sort origin добавляется к значению Y-sort origin каждого тайла. Это позволяет, например, подделать другой уровень высоты. Это может быть полезно для игр с видом сверху вниз.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

Вызывается с объектом :ref:`TileData<class_TileData>`, который будет использоваться внутри **TileMapLayer**, что позволяет изменять его во время выполнения.

Этот метод вызывается только в том случае, если реализован :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` и возвращает ``true`` для заданного тайла ``coords``.

\ **Предупреждение:** Подресурсы объекта ``tile_data`` такие же, как в TileSet. Их изменение может повлиять на весь TileSet. Вместо этого обязательно дублируйте эти ресурсы.

\ **Примечание:** Если свойства объекта ``tile_data`` должны со временем измениться, используйте :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>`, чтобы уведомить **TileMapLayer**, что ему нужно обновление.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

Вызывается, когда ячейки этого **TileMapLayer** нуждаются во внутреннем обновлении. Это обновление может быть вызвано изменением отдельных ячеек или изменением в :ref:`tile_set<class_TileMapLayer_property_tile_set>` (что приводит к тому, что все ячейки ставятся в очередь на обновление). Первый вызов этой функции всегда предназначен для инициализации всех ячеек **TileMapLayer**. ``coords`` содержит координаты всех измененных ячеек, примерно в том порядке, в котором они были изменены. ``force_cleanup`` имеет значение ``true``, когда внутренние данные **TileMapLayer** должны быть полностью очищены. Это происходит, когда:

- Слой отключен;

- Слой не виден;

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` имеет значение ``null``;

- Узел удален из дерева;

- Узел освобожден.

Обратите внимание, что любое внутреннее обновление, происходящее при проверке одного из этих условий, считается «очисткой». См. также :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Предупреждение:** Реализация этого метода может ухудшить производительность **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

Должен возвращать ``true``, если тайл по координатам ``coords`` требует обновления во время выполнения.

\ **Предупреждение:** Убедитесь, что эта функция возвращает ``true`` только при необходимости. Обработка любого тайла во время выполнения без необходимости приведёт к значительному снижению производительности.

\ **Примечание:** Если результат этой функции должен измениться, используйте :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>`, чтобы уведомить **TileMapLayer** о необходимости обновления.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

Очистка всех ячеек.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

Стирает ячейку с координатами ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

Очищает ячейки, содержащие тайлы, которые не существуют в :ref:`tile_set<class_TileMapLayer_property_tile_set>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

Возвращает идентификатор альтернативного тайла ячейки по координатам ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

Возвращает идентификатор координат атласа тайла ячейки с координатами ``coords``. Возвращает ``Vector2i(-1, -1)``, если ячейка не существует.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

Возвращает идентификатор источника тайла ячейки с координатами ``coords``. Возвращает ``-1``, если ячейка не существует.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

Возвращает объект :ref:`TileData<class_TileData>`, связанный с заданной ячейкой, или ``null``, если ячейка не существует или не является :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

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

Возвращает координаты физического квадранта (см. :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`) для заданного физического тела :ref:`RID<class_RID>`. Такой :ref:`RID<class_RID>` можно получить из :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>` при столкновении с тайлом.

\ **Примечание:** Более высокие значения :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` сделают эту функцию менее точной. Чтобы получить точные координаты ячейки, необходимо установить :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` равным ``1``, что отключает разбиение физического тела на блоки.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

Возвращает :ref:`RID<class_RID>` навигации :ref:`NavigationServer2D<class_NavigationServer2D>`, используемой этим **TileMapLayer**.

По умолчанию возвращается карта навигации :ref:`World2D<class_World2D>` по умолчанию, если только пользовательская карта не была предоставлена с помощью :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

Возвращает соседнюю ячейку к ячейке с координатами ``coords``, идентифицированной направлением ``neighbor``. Этот метод учитывает различные макеты, которые может принимать TileMap.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

Создает и возвращает новый :ref:`TileMapPattern<class_TileMapPattern>` из указанного массива ячеек. См. также :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

Возвращает список всех соседних ячеек для ячейки с ``coords``. Любая соседняя ячейка — это та, которая касается краев, поэтому для квадратной ячейки будет возвращено 4 ячейки, для шестиугольника — 6 ячеек.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

Возвращает массив :ref:`Vector2i<class_Vector2i>` с позициями всех ячеек, содержащих тайл. Ячейка считается пустой, если ее исходный идентификатор равен ``-1``, ее идентификатор координат атласа равен ``Vector2(-1, -1)``, а ее альтернативный идентификатор равен ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

Возвращает массив :ref:`Vector2i<class_Vector2i>` с позициями всех ячеек, содержащих тайл. Тайлы могут быть отфильтрованы по их источнику (``source_id``), координатам атласа (``atlas_coords``) или альтернативному идентификатору (``alternative_tile``).

Если параметр имеет значение по умолчанию, он не используется для фильтрации ячеек. Таким образом, если все параметры имеют свои значения по умолчанию, этот метод возвращает тот же результат, что и :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>`.

Ячейка считается пустой, если её идентификатор источника равен ``-1``, координаты атласа — ``Vector2(-1, -1)``, а альтернативный идентификатор — ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

Возвращает прямоугольник, охватывающий использованные (непустые) тайлы карты.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

Возвращает, принадлежит ли предоставленный ``body`` :ref:`RID<class_RID>` одной из ячеек **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

Возвращает ``true``, если ячейка с координатами ``coords`` перевернута по горизонтали. Результат действителен только для источников атласа.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

Возвращает ``true``, если ячейка с координатами ``coords`` перевернута вертикально. Результат действителен только для источников атласа.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

Возвращает ``true``, если ячейка с координатами ``coords`` транспонирована. Результат действителен только для источников атласа.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

Возвращает координаты карты ячейки, содержащей заданный ``local_position``. Если ``local_position`` находится в глобальных координатах, рассмотрите возможность использования :ref:`Node2D.to_local()<class_Node2D_method_to_local>` перед передачей его этому методу. См. также :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

Возвращает соответствующие координаты ячейки для заданных координат ``coords_in_pattern`` в :ref:`TileMapPattern<class_TileMapPattern>`, если шаблон был вставлен по координатам ``position_in_tilemap`` (см. :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`). Это сопоставление необходимо, потому что для фигур тайлов со смещением на половину простое вычисление ``position_in_tile_map + coords_in_pattern`` может не сработать.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

Возвращает центрированную позицию ячейки в локальном координатном пространстве **TileMapLayer**. Чтобы преобразовать возвращаемое значение в глобальные координаты, используйте :ref:`Node2D.to_global()<class_Node2D_method_to_global>`. См. также :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`.

\ **Примечание:** Это может не соответствовать визуальной позиции тайла, т. е. игнорирует свойство :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` отдельных тайлов.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

Уведомляет узел **TileMapLayer**, что вызовы :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` или :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` приведут к разным результатам. Таким образом, это вызовет обновление **TileMapLayer**.

\ **Предупреждение:** Обновление **TileMapLayer** требует больших вычислительных затрат и может повлиять на производительность. Постарайтесь ограничить количество вызовов этой функции, чтобы избежать ненужного обновления.

\ **Примечание:** Это не запускает прямое обновление **TileMapLayer**, обновление будет выполнено в конце кадра, как обычно (если только вы не вызовете :ref:`update_internals()<class_TileMapLayer_method_update_internals>`).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

Устанавливает идентификаторы тайла для ячейки с координатами ``coords``. Каждый тайл :ref:`TileSet<class_TileSet>` идентифицируется с помощью трех частей:

- Идентификатор источника ``source_id`` идентифицирует идентификатор :ref:`TileSetSource<class_TileSetSource>`. См. :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`,

- Идентификатор координат атласа ``atlas_coords`` идентифицирует координаты тайла в атласе (если источником является :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`). Для :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` это всегда должно быть ``Vector2i(0, 0)``,

- Идентификатор альтернативного тайла ``alternative_tile`` идентифицирует альтернативный тайл в атласе (если источником является :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`), а для :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` — сцену.

Если ``source_id`` установлен на ``-1``, ``atlas_coords`` на ``Vector2i(-1, -1)`` или ``alternative_tile`` на ``-1``, ячейка будет стерта. Стертая ячейка получает **все** ее идентификаторы, автоматически установленные на соответствующие недействительные значения, а именно ``-1``, ``Vector2i(-1, -1)`` и ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

Обновить все ячейки в массиве координат ``cells`` так, чтобы они использовали заданный ``terrain`` для заданного ``terrain_set``. Если обновленная ячейка имеет тот же рельеф, что и одна из соседних ячеек, эта функция пытается объединить две. Эта функция может обновить соседние тайлы, если это необходимо для создания правильных переходов рельефа.

Если ``ignore_empty_terrains`` имеет значение ``true``, пустые ландшафты будут игнорироваться при попытке найти наиболее подходящий тайл для заданных ограничений рельефа.

\ **Примечание:** Для корректной работы этот метод требует, чтобы TileSet **TileMapLayer** имел ландшафты (terrain), настроенные со всеми требуемыми комбинациями рельефа. В противном случае это может привести к неожиданным результатам.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

Обновите все ячейки в массиве координат ``path``, чтобы они использовали заданный ``terrain`` для заданного ``terrain_set``. Функция также соединит две последовательные ячейки на пути с тем же рельефом. Эта функция может обновить соседние тайлы, если необходимо создать правильные переходы рельефа.

Если ``ignore_empty_terrains`` имеет значение ``true``, пустые ландшафты будут игнорироваться при попытке найти наиболее подходящий тайл для заданных ограничений рельефа.

\ **Примечание:** Для корректной работы этот метод требует, чтобы TileSet **TileMapLayer** имел ландшафты, настроенные со всеми требуемыми комбинациями рельефа. В противном случае это может привести к неожиданным результатам.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

Устанавливает пользовательскую ``map`` как навигационную карту :ref:`NavigationServer2D<class_NavigationServer2D>`. Если не установлено, вместо этого используется навигационная карта по умолчанию :ref:`World2D<class_World2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

Вставляет :ref:`TileMapPattern<class_TileMapPattern>` в указанную ``position`` на карте тайлов. См. также :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

Запускает прямое обновление **TileMapLayer**. Обычно вызов этой функции не требуется, так как узел **TileMapLayer** обновляется автоматически при изменении одного из его свойств или ячеек.

Однако по соображениям производительности эти обновления пакетируются и задерживаются до конца кадра. Вызов этой функции заставит **TileMapLayer** обновиться немедленно.

\ **Предупреждение:** Обновление **TileMapLayer** требует больших вычислительных затрат и может повлиять на производительность. Попробуйте ограничить количество обновлений и количество плиток, на которые они влияют.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
