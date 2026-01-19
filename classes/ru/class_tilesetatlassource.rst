:github_url: hide

.. _class_TileSetAtlasSource:

TileSetAtlasSource
==================

**Наследует:** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Предоставляет 2D-текстуру атласа как набор плиток для ресурса :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Атлас — это сетка тайлов, расположенных на текстуре. Каждый тайл в сетке должен быть создан методом :ref:`create_tile()<class_TileSetAtlasSource_method_create_tile>`. Эти тайлы индексируются по их координатам в сетке.

Каждый тайл также может иметь размер в координатах сетки, занимая больше или меньше ячеек в атласе.

Альтернативные версии тайла создаются методом :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>` и индексируются по альтернативному идентификатору. Основной тайл (сеточный) доступен при альтернативном идентификаторе, равном 0.

Каждый альтернативный тайл имеет набор свойств, определяемых слоями :ref:`TileSet<class_TileSet>` источника. Эти свойства хранятся в объекте TileData, доступном для чтения и изменения через :ref:`get_tile_data()<class_TileSetAtlasSource_method_get_tile_data>`.

Поскольку свойства TileData хранятся непосредственно в ресурсе TileSetAtlasSource, их также можно задать через ``TileSetAtlasSource.set("<координата_x>:<координата_y>/<альтернативный_id>/<свойство_tiledata>")``.

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Перечисления
------------------------

.. _enum_TileSetAtlasSource_TileAnimationMode:

.. rst-class:: classref-enumeration

enum **TileAnimationMode**: :ref:`🔗<enum_TileSetAtlasSource_TileAnimationMode>`

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_DEFAULT** = ``0``

Анимация плиток запускается одновременно и выглядит идентично.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_RANDOM_START_TIMES:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_RANDOM_START_TIMES** = ``1``

Анимация плиток запускается в случайные моменты времени и выглядит разнообразно.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_MAX** = ``2``

Представляет размер перечисления :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_H** = ``4096`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`

Представляет флаг горизонтального переворота ячейки. Следует использовать напрямую с :ref:`TileMapLayer<class_TileMapLayer>` для переворота размещенных тайлов путем изменения их альтернативных идентификаторов (ID).

::

    var alternate_id = $TileMapLayer.get_cell_alternative_tile(Vector2i(2, 2))
    if not alternate_id & TileSetAtlasSource.TRANSFORM_FLIP_H:
        # Если тайл еще не перевернут, переверните его.
        $TileMapLayer.set_cell(Vector2i(2, 2), source_id, atlas_coords, alternate_id | TileSetAtlasSource.TRANSFORM_FLIP_H)

\ **Примечание:** Эти преобразования можно объединить для создания эквивалента поворотов на 0, 90, 180 и 270 градусов, как показано ниже:

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

Представляет флаг вертикального переворота ячейки. См. :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` для использования.

.. _class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE:

.. rst-class:: classref-constant

**TRANSFORM_TRANSPOSE** = ``16384`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE>`

Представляет транспонированный флаг ячейки. См. :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` для использования.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TileSetAtlasSource_property_margins:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **margins** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_margins>`

.. rst-class:: classref-property-setget

- |void| **set_margins**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_margins**\ (\ )

Поля в пикселях для смещения начала сетки в текстуре.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_separation:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **separation** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_separation>`

.. rst-class:: classref-property-setget

- |void| **set_separation**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_separation**\ (\ )

Разделение в пикселях между каждой областью текстуры тайла сетки.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TileSetAtlasSource_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

Текстура атласа.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture_region_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_region_size** = ``Vector2i(16, 16)`` :ref:`🔗<class_TileSetAtlasSource_property_texture_region_size>`

.. rst-class:: classref-property-setget

- |void| **set_texture_region_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_region_size**\ (\ )

Базовый размер тайла в текстуре (в пикселях). Этот размер должен быть больше или равен значению ``tile_size`` TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_use_texture_padding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_padding** = ``true`` :ref:`🔗<class_TileSetAtlasSource_property_use_texture_padding>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_padding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_texture_padding**\ (\ )

Если ``true``, генерирует внутреннюю текстуру с дополнительным отступом в один пиксель вокруг каждого тайла. Отступ текстуры позволяет избежать распространенного артефакта, когда линии появляются между тайлами.

Отключение этого параметра может привести к небольшому улучшению производительности, поскольку создание внутренней текстуры требует как памяти, так и времени обработки при изменении ресурса TileSetAtlasSource.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TileSetAtlasSource_method_clear_tiles_outside_texture:

.. rst-class:: classref-method

|void| **clear_tiles_outside_texture**\ (\ ) :ref:`🔗<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`

Удаляет все тайлы, которые не вписываются в доступную область текстуры. Этот метод перебирает все тайлы источника, поэтому рекомендуется заранее использовать :ref:`has_tiles_outside_texture()<class_TileSetAtlasSource_method_has_tiles_outside_texture>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_alternative_tile>`

Создает альтернативный тайл для тайла с координатами ``atlas_coords``. Если ``alternative_id_override`` равен -1, назначает автоматически сгенерированный уникальный ID, в противном случае использует указанный ID.

Возвращает новый идентификатор альтернативы или -1, если альтернатива не может быть создана с предоставленным ``alternative_id_override``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_tile:

.. rst-class:: classref-method

|void| **create_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_tile>`

Создает новый тайл с координатами ``atlas_coords`` с заданным ``size``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_atlas_grid_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_atlas_grid_size**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_atlas_grid_size>`

Возвращает размер сетки атласа, который зависит от того, сколько плиток может поместиться в текстуре. Таким образом, он зависит от размера :ref:`texture<class_TileSetAtlasSource_property_texture>`, :ref:`margins<class_TileSetAtlasSource_property_margins>` атласа и :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>` плиток.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_next_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`

Возвращает альтернативный идентификатор, который вернет следующий вызов :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_runtime_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_texture>`

Если :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` равно ``false``, возвращает :ref:`texture<class_TileSetAtlasSource_property_texture>`. В противном случае возвращает внутренний объект :ref:`ImageTexture<class_ImageTexture>`, созданный с учетом отступов.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_runtime_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_tile_texture_region>`

Возвращает область тайла с координатами ``atlas_coords`` для заданного ``frame`` внутри текстуры, возвращаемой :ref:`get_runtime_texture()<class_TileSetAtlasSource_method_get_runtime_texture>`.

\ **Примечание:** Если :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` равен ``false``, возвращает то же, что и :ref:`get_tile_texture_region()<class_TileSetAtlasSource_method_get_tile_texture_region>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_columns:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_columns>`

Возвращает количество столбцов, которые тайл в ``atlas_coords`` имеет в своем макете анимации.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`

Возвращает длительность кадра анимации кадра ``frame_index`` для тайла с координатами ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frames_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`

Возвращает количество кадров анимации, которые имеет тайл с координатами ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_mode:

.. rst-class:: classref-method

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **get_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_mode>`

Возвращает режим анимации тайла по координатам ``atlas_coords``. См. также :ref:`set_tile_animation_mode()<class_TileSetAtlasSource_method_set_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_separation:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_separation>`

Возвращает расстояние (как в сетке атласа) между кадрами анимированного тайла по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_speed>`

Возвращает скорость анимации тайла по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_total_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_total_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`

Возвращает общую длительность (sum of the sum) всех кадров анимации тайла по координатам ``atlas_coords``. Это значение необходимо разделить на скорость анимации, чтобы получить фактическую длительность цикла анимации.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_at_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_at_coords**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_at_coords>`

Если есть тайл, покрывающий координаты ``atlas_coords``, возвращает верхние левые координаты тайла (следовательно, его идентификатор координат). В противном случае возвращает ``Vector2i(-1, -1)``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_tile_data**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_data>`

Возвращает объект :ref:`TileData<class_TileData>` для указанных координат атласа и альтернативного идентификатора.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_size_in_atlas:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_size_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`

Возвращает размер тайла (в системе координат сетки) в координатах ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_texture_region>`

Возвращает текстурную область тайла в текстуре атласа. Для анимированных тайлов аргумент ``frame`` может быть предоставлен для различных кадров анимации.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_tiles_to_be_removed_on_change**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`

Возвращает массив идентификаторов координат плиток, которые будут автоматически удалены при изменении одного или нескольких из этих свойств: ``texture``, ``margins``, ``section`` или ``texture_region_size``. Это можно использовать для отмены изменений, которые могли бы привести к потере данных плиток.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_room_for_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_room_for_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_room_for_tile>`

Возвращает, достаточно ли места в атласе для создания/изменения тайла с заданными свойствами. Если указан ``passed_tile``, действовать так, как будто заданный тайл отсутствует в атласе. Это можно использовать, когда вы хотите изменить свойства тайла.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_tiles_outside_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tiles_outside_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_tiles_outside_texture>`

Проверяет, есть ли в источнике тайлы, которые не попадают в область текстуры (частично или полностью).

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_move_tile_in_atlas:

.. rst-class:: classref-method

|void| **move_tile_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_move_tile_in_atlas>`

Перемещает тайл и его альтернативы из координат ``atlas_coords`` в координаты ``new_atlas_coords`` с размером ``new_size``. Функция завершится ошибкой, если в указанной области уже присутствует тайл.

Если ``new_atlas_coords`` равен ``Vector2i(-1, -1)``, сохраняются текущие координаты тайла. Если ``new_size`` равен ``Vector2i(-1, -1)``, сохраняется текущий размер тайла.

Чтобы избежать ошибки, сначала проверьте возможность перемещения с помощью :ref:`has_room_for_tile()<class_TileSetAtlasSource_method_has_room_for_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_alternative_tile:

.. rst-class:: classref-method

|void| **remove_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_alternative_tile>`

Удалить альтернативу тайла с альтернативным идентификатором ``alternative_tile``.

Вызов этой функции с ``alternative_tile``, равным 0, завершится ошибкой, так как базовая альтернатива тайла не может быть удалена.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_tile:

.. rst-class:: classref-method

|void| **remove_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_tile>`

Удалить тайл и его альтернативу по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_alternative_tile_id:

.. rst-class:: classref-method

|void| **set_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_alternative_tile_id>`

Измените альтернативный идентификатор тайла с ``alternative_tile`` на ``new_id``.

Вызов этой функции с ``new_id`` равным 0 завершится ошибкой, так как базовую альтернативу тайла нельзя переместить.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_columns:

.. rst-class:: classref-method

|void| **set_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_columns>`

Устанавливает количество столбцов в макете анимации тайла по координатам ``atlas_coords``. Если установлено значение 0, то различные кадры анимации располагаются в атласе как одна горизонтальная линия.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frame_duration:

.. rst-class:: classref-method

|void| **set_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`

Устанавливает кадр анимации ``duration`` кадра ``frame_index`` для тайла по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frames_count:

.. rst-class:: classref-method

|void| **set_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`

Устанавливает количество кадров анимации для тайла по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_mode:

.. rst-class:: classref-method

|void| **set_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_mode>`

Устанавливает режим анимации тайла в ``atlas_coords`` на ``mode``. См. также :ref:`get_tile_animation_mode()<class_TileSetAtlasSource_method_get_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_separation:

.. rst-class:: classref-method

|void| **set_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_separation>`

Устанавливает отступ (в ячейках сетки) между каждым тайлом в макете анимации тайла по координатам ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_speed:

.. rst-class:: classref-method

|void| **set_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_speed>`

Устанавливает скорость анимации тайла по координатам ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
