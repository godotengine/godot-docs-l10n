:github_url: hide

.. _class_TileSetAtlasSource:

TileSetAtlasSource
==================

**Hereda:** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Expone una textura atlas 2D como un conjunto de tiles para un recurso :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un atlas es una cuadrícula de tiles dispuestas en una textura. Cada tile en la cuadrícula debe exponerse utilizando :ref:`create_tile()<class_TileSetAtlasSource_method_create_tile>`. Esos tiles se indexan luego utilizando sus coordenadas en la cuadrícula.

Cada tile también puede tener un tamaño en las coordenadas de la cuadrícula, haciéndolo más o menos celdas en el atlas.

Se pueden crear versiones alternativas de un tile utilizando :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>`, que luego se indexan utilizando un ID alternativo. Se accede al tile principal (el que está en la cuadrícula) con un ID alternativo igual a 0.

Cada alternativa de tile tiene un conjunto de propiedades que se definen mediante las capas :ref:`TileSet<class_TileSet>` del origen. Esas propiedades se almacenan en un objeto TileData al que se puede acceder y modificar utilizando :ref:`get_tile_data()<class_TileSetAtlasSource_method_get_tile_data>`.

Como las propiedades de TileData se almacenan directamente en el recurso TileSetAtlasSource, sus propiedades también se pueden establecer utilizando ``TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_TileSetAtlasSource_TileAnimationMode:

.. rst-class:: classref-enumeration

enum **TileAnimationMode**: :ref:`🔗<enum_TileSetAtlasSource_TileAnimationMode>`

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_DEFAULT** = ``0``

Las animaciones de los tiles comienzan al mismo tiempo, pareciendo idénticas.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_RANDOM_START_TIMES:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_RANDOM_START_TIMES** = ``1``

Las animaciones de los tiles comienzan en momentos aleatorios, pareciendo variadas.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_MAX** = ``2``

Representa el tamaño del enum :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_H** = ``4096`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`

Representa la bandera de volteo horizontal de la celda. Debe usarse directamente con :ref:`TileMapLayer<class_TileMapLayer>` para voltear los tiles colocados alterando sus IDs alternativos.

::

    var id_alternativo = $TileMapLayer.get_cell_alternative_tile(Vector2i(2, 2))
    if not id_alternativo & TileSetAtlasSource.TRANSFORM_FLIP_H:
        # Si el tile aún no está volteado, voltéalo.
        $TileMapLayer.set_cell(Vector2i(2, 2), source_id, atlas_coords, id_alternativo | TileSetAtlasSource.TRANSFORM_FLIP_H)

\ **Nota:** Estas transformaciones pueden combinarse para hacer el equivalente a rotaciones de 0, 90, 180 y 270 grados, como se muestra a continuación:

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

Representa la bandera de volteo vertical de la celda. Véase :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` para su uso.

.. _class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE:

.. rst-class:: classref-constant

**TRANSFORM_TRANSPOSE** = ``16384`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE>`

Representa la bandera de transposición de la celda. Véase :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` para su uso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TileSetAtlasSource_property_margins:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **margins** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_margins>`

.. rst-class:: classref-property-setget

- |void| **set_margins**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_margins**\ (\ )

Márgenes, en píxeles, para desplazar el origen de la cuadrícula en la textura.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_separation:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **separation** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_separation>`

.. rst-class:: classref-property-setget

- |void| **set_separation**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_separation**\ (\ )

El espacio, en píxeles, es el espacio entre mosaicos en el área de textura de la cuadrícula.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TileSetAtlasSource_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La textura del atlas.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture_region_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_region_size** = ``Vector2i(16, 16)`` :ref:`🔗<class_TileSetAtlasSource_property_texture_region_size>`

.. rst-class:: classref-property-setget

- |void| **set_texture_region_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_region_size**\ (\ )

El tamaño base del tile en la textura (en píxeles). Este tamaño debe ser mayor o igual que el valor ``tile_size`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_use_texture_padding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_padding** = ``true`` :ref:`🔗<class_TileSetAtlasSource_property_use_texture_padding>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_padding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_texture_padding**\ (\ )

Si es ``true``, genera una textura interna con un relleno adicional de un píxel alrededor de cada tile. El relleno de la textura evita un artefacto común donde aparecen líneas entre los tiles.

Deshabilitar esta opción podría conducir a una pequeña mejora en el rendimiento, ya que generar la textura interna requiere tanto memoria como tiempo de procesamiento cuando se modifica el recurso TileSetAtlasSource.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TileSetAtlasSource_method_clear_tiles_outside_texture:

.. rst-class:: classref-method

|void| **clear_tiles_outside_texture**\ (\ ) :ref:`🔗<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`

Elimina todos los tiles que no encajan en el área de textura disponible. Este método itera sobre todos los tiles del origen, por lo que se aconseja utilizar :ref:`has_tiles_outside_texture()<class_TileSetAtlasSource_method_has_tiles_outside_texture>` de antemano.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_alternative_tile>`

Crea un tile alternativo para el tile en las coordenadas ``atlas_coords``. Si ``alternative_id_override`` es -1, le da un ID único generado automáticamente, o le asigna el ID dado de lo contrario.

Devuelve el nuevo identificador alternativo, o -1 si la alternativa no pudo ser creada con un ``alternative_id_override`` proporcionado.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_tile:

.. rst-class:: classref-method

|void| **create_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_tile>`

Crea un nuevo tile en las coordenadas ``atlas_coords`` con el ``size`` dado.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_atlas_grid_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_atlas_grid_size**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_atlas_grid_size>`

Devuelve el tamaño de la cuadrícula del atlas, que depende de cuántos tiles caben en la textura. Por lo tanto, depende del tamaño de :ref:`texture<class_TileSetAtlasSource_property_texture>`, los :ref:`margins<class_TileSetAtlasSource_property_margins>` del atlas y el :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>` de los tiles.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_next_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`

Devuelve el ID alternativo que devolvería una llamada posterior a :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_runtime_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_texture>`

Si :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` es ``false``, devuelve :ref:`texture<class_TileSetAtlasSource_property_texture>`. De lo contrario, devuelve una :ref:`ImageTexture<class_ImageTexture>` interna creada que incluye el relleno.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_runtime_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_tile_texture_region>`

Devuelve la región del tile en las coordenadas ``atlas_coords`` para el ``frame`` dado dentro de la textura devuelta por :ref:`get_runtime_texture()<class_TileSetAtlasSource_method_get_runtime_texture>`.

\ **Nota:** Si :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` es ``false``, devuelve lo mismo que :ref:`get_tile_texture_region()<class_TileSetAtlasSource_method_get_tile_texture_region>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_columns:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_columns>`

Devuelve cuántas columnas tiene el tile en ``atlas_coords`` en su diseño de animación.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`

Devuelve la duración del fotograma de animación ``frame_index`` para el tile en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frames_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`

Devuelve cuántos fotogramas de animación tiene el tile en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_mode:

.. rst-class:: classref-method

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **get_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_mode>`

Devuelve el modo de animación del tile en ``atlas_coords``. Véase también :ref:`set_tile_animation_mode()<class_TileSetAtlasSource_method_set_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_separation:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_separation>`

Devuelve la separación (como en la cuadrícula del atlas) entre cada fotograma de un tile animado en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_speed>`

Devuelve la velocidad de animación del tile en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_total_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_total_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`

Devuelve la suma de la suma de las duraciones de los fotogramas del tile en las coordenadas ``atlas_coords``. Este valor debe dividirse por la velocidad de animación para obtener la duración real del bucle de animación.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_at_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_at_coords**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_at_coords>`

Si hay un tile que cubre las coordenadas ``atlas_coords``, devuelve las coordenadas de la esquina superior izquierda del tile (por lo tanto, su ID de coordenada). De lo contrario, devuelve ``Vector2i(-1, -1)``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_tile_data**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_data>`

Devuelve el objeto :ref:`TileData<class_TileData>` para las coordenadas del atlas y el ID alternativo dados.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_size_in_atlas:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_size_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`

Devuelve el tamaño del tile (en el sistema de coordenadas de la cuadrícula) en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_texture_region>`

Devuelve la región de textura de un tile en la textura del atlas. Para los tiles animados, se puede proporcionar un argumento ``frame`` para los diferentes fotogramas de la animación.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_tiles_to_be_removed_on_change**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`

Devuelve un array de ID de coordenadas de tiles que se eliminarán automáticamente al modificar una o varias de estas propiedades: ``texture``, ``margins``, ``separation`` o ``texture_region_size``. Esto se puede utilizar para deshacer los cambios que habrían causado la pérdida de datos de los tiles.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_room_for_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_room_for_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_room_for_tile>`

Devuelve si hay suficiente espacio en un atlas para crear/modificar un tile con las propiedades dadas. Si se proporciona ``ignored_tile``, actúa como si el tile dado no estuviera presente en el atlas. Esto se puede utilizar cuando quieres modificar las propiedades de un tile.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_tiles_outside_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tiles_outside_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_tiles_outside_texture>`

Comprueba si el origen tiene algún tile que no se ajuste al área de textura (ya sea parcial o completamente).

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_move_tile_in_atlas:

.. rst-class:: classref-method

|void| **move_tile_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_move_tile_in_atlas>`

Mueve el tile y sus alternativas en las coordenadas ``atlas_coords`` a las coordenadas ``new_atlas_coords`` con el tamaño ``new_size``. Esta función fallará si ya hay un tile presente en el área dada.

Si ``new_atlas_coords`` es ``Vector2i(-1, -1)``, mantiene las coordenadas del tile. Si ``new_size`` es ``Vector2i(-1, -1)``, mantiene el tamaño del tile.

Para evitar un error, primero comprueba si un movimiento es posible usando :ref:`has_room_for_tile()<class_TileSetAtlasSource_method_has_room_for_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_alternative_tile:

.. rst-class:: classref-method

|void| **remove_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_alternative_tile>`

Elimina la alternativa de un tile con el ID alternativo ``alternative_tile``.

Llamar a esta función con ``alternative_tile`` igual a 0 fallará, ya que la alternativa del tile base no se puede eliminar.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_tile:

.. rst-class:: classref-method

|void| **remove_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_tile>`

Elimina un tile y su alternativa en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_alternative_tile_id:

.. rst-class:: classref-method

|void| **set_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_alternative_tile_id>`

Cambia el ID alternativo de un tile de ``alternative_tile`` a ``new_id``.

Llamar a esta función con ``new_id`` de 0 fallará, ya que la alternativa del tile base no se puede mover.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_columns:

.. rst-class:: classref-method

|void| **set_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_columns>`

Establece el número de columnas en el diseño de animación del tile en las coordenadas ``atlas_coords``. Si se establece en 0, los diferentes fotogramas de la animación se disponen como una sola línea horizontal en el atlas.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frame_duration:

.. rst-class:: classref-method

|void| **set_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`

Establece la duración ``duration`` del fotograma de animación ``frame_index`` para el tile en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frames_count:

.. rst-class:: classref-method

|void| **set_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`

Establece cuántos fotogramas de animación tiene el mosaico en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_mode:

.. rst-class:: classref-method

|void| **set_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_mode>`

Establece el modo de animación del tile en ``atlas_coords`` en ``mode``. Véase también :ref:`get_tile_animation_mode()<class_TileSetAtlasSource_method_get_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_separation:

.. rst-class:: classref-method

|void| **set_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_separation>`

Establece el espaciado (en mosaicos de la cuadrícula) entre mosaicos en el diseño animado del mosaico ubicado en las coordenadas ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_speed:

.. rst-class:: classref-method

|void| **set_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_speed>`

Establece la velocidad de animación del mosaico ubicado en las coordenadas ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
