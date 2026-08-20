:github_url: hide

.. _class_TileSetAtlasSource:

TileSetAtlasSource
==================

**Eredita:** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Espone una texture di atlante 2D come un insieme di tasselli per una risorsa :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un atlante è una griglia di tasselli disposte su una texture. Ogni tassello nella griglia deve essere esposto tramite :ref:`create_tile()<class_TileSetAtlasSource_method_create_tile>`. Tali tasselli sono quindi indicizzati tramite le loro coordinate nella griglia.

Ogni tassello può anche avere dimensioni nelle coordinate della griglia, rendendolo più o meno celle nell'atlante.

È possibile creare le versioni alternative di un tassello tramite :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>`, le quali sono quindi indicizzate usando un ID alternativo. Il tassello principalo (quello nella griglia), è accessibile con un ID alternativo pari a 0.

Ogni tassello alternativo ha una serie di proprietà che è definita dagli strati del :ref:`TileSet<class_TileSet>` della sorgente. Tali proprietà sono memorizzate in un oggetto TileData a cui è possibile accedere e modificare tramite :ref:`get_tile_data()<class_TileSetAtlasSource_method_get_tile_data>`.

Poiché le proprietà TileData sono memorizzate direttamente nella risorsa TileSetAtlasSource, è possibile impostare le loro proprietà anche tramite ``TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Enumerazioni
------------------------

.. _enum_TileSetAtlasSource_TileAnimationMode:

.. rst-class:: classref-enumeration

enum **TileAnimationMode**: :ref:`🔗<enum_TileSetAtlasSource_TileAnimationMode>`

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_DEFAULT** = ``0``

Le animazioni dei tasselli iniziano allo stesso tempo, sembrando identiche.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_RANDOM_START_TIMES:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_RANDOM_START_TIMES** = ``1``

Le animazioni dei tasselli iniziano in momenti a caso, apparendo varie.

.. _class_TileSetAtlasSource_constant_TILE_ANIMATION_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **TILE_ANIMATION_MODE_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H:

.. rst-class:: classref-constant

**TRANSFORM_FLIP_H** = ``4096`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>`

Rappresenta il flag di capovolgimento orizzontale della cella. Dovrebbe essere utilizzato direttamente con :ref:`TileMapLayer<class_TileMapLayer>` per capovolgere i tasselli posizionati modificandone gli ID alternativi.

::

    var alternate_id = $TileMap.get_cell_alternative_tile(0, Vector2i(2, 2))
    if not alternate_id & TileSetAtlasSource.TRANSFORM_FLIP_H:
        # Se la tessera non è già capovolta, capovolgila.
        $TileMap.set_cell(0, Vector2i(2, 2), source_id, atlas_coords, alternate_id | TileSetAtlasSource.TRANSFORM_FLIP_H)

\ **Nota:** Queste trasformazioni possono essere combinate per ottenere l'equivalente di rotazioni di 0, 90, 180 e 270 gradi, come mostrato di seguito:

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

Rappresenta il flag di capovolgimento verticale della cella. Vedi :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` per l'utilizzo.

.. _class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE:

.. rst-class:: classref-constant

**TRANSFORM_TRANSPOSE** = ``16384`` :ref:`🔗<class_TileSetAtlasSource_constant_TRANSFORM_TRANSPOSE>`

Rappresenta il flag di trasposizione della cella. Vedi :ref:`TRANSFORM_FLIP_H<class_TileSetAtlasSource_constant_TRANSFORM_FLIP_H>` per l'utilizzo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TileSetAtlasSource_property_margins:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **margins** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_margins>`

.. rst-class:: classref-property-setget

- |void| **set_margins**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_margins**\ (\ )

I margini, in pixel, per spostare l'origine della griglia nella texture.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_separation:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **separation** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileSetAtlasSource_property_separation>`

.. rst-class:: classref-property-setget

- |void| **set_separation**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_separation**\ (\ )

La separazione, in pixel, tra ciascuna regione della texture dei tasselli della griglia.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_TileSetAtlasSource_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La texture d'atlante.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_texture_region_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_region_size** = ``Vector2i(16, 16)`` :ref:`🔗<class_TileSetAtlasSource_property_texture_region_size>`

.. rst-class:: classref-property-setget

- |void| **set_texture_region_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_region_size**\ (\ )

Le dimensioni base di un tassello nella texture (in pixel). Queste dimensioni devono essere maggiori del valore ``tile_size`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_property_use_texture_padding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_padding** = ``true`` :ref:`🔗<class_TileSetAtlasSource_property_use_texture_padding>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_padding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_texture_padding**\ (\ )

Se ``true``, genera una texture interna con un ulteriore padding di un pixel attorno a ogni tassello. Il padding della texture evita un artefatto comune in cui compaiono linee tra i tasselli.

Disabilitare questa impostazione potrebbe portare a un piccolo miglioramento delle prestazioni, poiché la generazione della texture interna richiede sia memoria sia tempo di elaborazione quando la risorsa TileSetAtlasSource viene modificata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileSetAtlasSource_method_clear_tiles_outside_texture:

.. rst-class:: classref-method

|void| **clear_tiles_outside_texture**\ (\ ) :ref:`🔗<class_TileSetAtlasSource_method_clear_tiles_outside_texture>`

Rimuove tutti i tasselli che non rientrano nell'area della texture disponibile. Questo metodo esegue un iterazione su tutti i tasselli della sorgente, quindi è consigliabile usare :ref:`has_tiles_outside_texture()<class_TileSetAtlasSource_method_has_tiles_outside_texture>` in anticipo.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_alternative_tile>`

Crea un tassello alternativo per il tassello alle coordinate ``atlas_coords``. Se ``alternative_id_override`` è -1, assegna un ID univoco generato automaticamente, altrimenti assegna l'ID specificato.

Restituisce il nuovo identificatore alternativo, oppure -1 se l'alternativa non può essere creata con il ``alternative_id_override`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_create_tile:

.. rst-class:: classref-method

|void| **create_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(1, 1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_create_tile>`

Crea un nuovo tassello alle coordinate ``atlas_coords`` con le dimensioni ``size``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_atlas_grid_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_atlas_grid_size**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_atlas_grid_size>`

Restituisce le dimensioni della griglia dell'atlante, che dipende da quanti tasselli possono essere inseriti nella texture. Dipende quindi dalle dimensioni della :ref:`texture<class_TileSetAtlasSource_property_texture>`, dai :ref:`margins<class_TileSetAtlasSource_property_margins>` dell'atlante e dalle :ref:`texture_region_size<class_TileSetAtlasSource_property_texture_region_size>` dei tasselli.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_next_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_next_alternative_tile_id>`

Restituisce l'ID alternativo che restituirebbe una chiamata successiva al :ref:`create_alternative_tile()<class_TileSetAtlasSource_method_create_alternative_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_runtime_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_texture>`

Se :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` è ``false``, restituisce :ref:`texture<class_TileSetAtlasSource_property_texture>`. Altrimenti, restituisce una :ref:`ImageTexture<class_ImageTexture>` interna creata che include il padding.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_runtime_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_runtime_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_runtime_tile_texture_region>`

Restituisce la regione del tassello alle coordinate ``atlas_coords`` per il fotogramma ``frame`` all'interno della texture restituita da :ref:`get_runtime_texture()<class_TileSetAtlasSource_method_get_runtime_texture>`.

\ **Nota:** Se :ref:`use_texture_padding<class_TileSetAtlasSource_property_use_texture_padding>` è ``false``, restituisce lo stesso di :ref:`get_tile_texture_region()<class_TileSetAtlasSource_method_get_tile_texture_region>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_columns:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_columns>`

Restituisce il numero di colonne presenti nel layout di animazione del tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frame_duration>`

Restituisce la durata del fotogramma all'indice ``frame_index`` dell'animazione per il tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_frames_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_frames_count>`

Restituisce il numero di fotogrammi dell'animazione presenti nel tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_mode:

.. rst-class:: classref-method

:ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>` **get_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_mode>`

Restituisce la modalità di animazione del tassello alle coordinate ``atlas_coords``. Vedi anche :ref:`set_tile_animation_mode()<class_TileSetAtlasSource_method_set_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_separation:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_separation>`

Restituisce la separazione (come nella griglia dell'atlante) tra ciascun fotogramma di un tassello animato alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_speed>`

Restituisce la velocità di animazione del tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_animation_total_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_tile_animation_total_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_animation_total_duration>`

Restituisce la somma di tutte le durate dei fotogrammi del tassello alle coordinate ``atlas_coords``. Questo valore deve essere diviso per la velocità di animazione per ottenere la durata effettiva del ciclo di animazione.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_at_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_at_coords**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_at_coords>`

Se è presente un tassello che copre le coordinate ``atlas_coords``, restituisce le coordinate in alto a sinistra del tassello (quindi il suo ID di coordinate). Altrimenti restituisce ``Vector2i(-1, -1)``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_tile_data**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_data>`

Restituisce l'oggetto :ref:`TileData<class_TileData>` per le coordinate dell'atlante specificate e l'ID alternativo.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_size_in_atlas:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_size_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_size_in_atlas>`

Restituisce le dimensioni del tassello (nel sistema di coordinate della griglia) alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tile_texture_region:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_tile_texture_region**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_get_tile_texture_region>`

Restituisce la regione di texture di un tassello nella texture d'atlante. Per tasselli animati, potrebbe essere fornito un argomento ``frame`` per i diversi fotogrammi dell'animazione.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_tiles_to_be_removed_on_change**\ (\ texture\: :ref:`Texture2D<class_Texture2D>`, margins\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`, texture_region_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_get_tiles_to_be_removed_on_change>`

Restituisce un array di ID di coordinate dei tasselli che saranno rimossi automaticamente quando si modifica una o più di queste proprietà: ``texture``, ``margins``, ``separation`` o ``texture_region_size``. Può essere utilizzato per annullare le modifiche che avrebbero causato la perdita di dati dei tasselli.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_room_for_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_room_for_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`, animation_columns\: :ref:`int<class_int>`, animation_separation\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`, ignored_tile\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_room_for_tile>`

Restituisce se c'è abbastanza spazio in un atlante per creare o modificare un tassello con le proprietà specificate. Se viene fornito ``ignored_tile``, si comporta come se il tassello specificato non fosse presente nell'atlante. Questo può essere usato quando si desidera modificare le proprietà di un tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_has_tiles_outside_texture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tiles_outside_texture**\ (\ ) |const| :ref:`🔗<class_TileSetAtlasSource_method_has_tiles_outside_texture>`

Verifica se la sorgente contiene tasselli che non rientrano nell'area della texture (parzialmente o completamente).

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_move_tile_in_atlas:

.. rst-class:: classref-method

|void| **move_tile_in_atlas**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, new_atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), new_size\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1)\ ) :ref:`🔗<class_TileSetAtlasSource_method_move_tile_in_atlas>`

Sposta il tassello e le sue alternative dalle coordinate ``atlas_coords`` alle coordinate ``new_atlas_coords`` con le dimensioni ``new_size``. Questa funzione fallirà se un tassello è già presente nell'area specificata.

Se ``new_atlas_coords`` è ``Vector2i(-1, -1)``, mantiene le coordinate del tassello. Se ``new_size`` è ``Vector2i(-1, -1)``, mantiene le dimensioni del tassello.

Per evitare un errore, verifica prima se è possibile uno spostamento tramite :ref:`has_room_for_tile()<class_TileSetAtlasSource_method_has_room_for_tile>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_alternative_tile:

.. rst-class:: classref-method

|void| **remove_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_alternative_tile>`

Rimuovi l'alternativa di un tassello con l'ID alternativo ``alternative_tile``.

La chiamata di questa funzione con ``alternative_tile`` uguale a 0 fallirà, poiché l'alternativa base del tassello non può essere rimossa.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_remove_tile:

.. rst-class:: classref-method

|void| **remove_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_remove_tile>`

Rimuovi un tassello e la sua alternativa alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_alternative_tile_id:

.. rst-class:: classref-method

|void| **set_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_alternative_tile_id>`

Cambia l'ID alternativo di un tassello da ``alternative_tile`` a ``new_id``.

La chiamata di questa funzione con ``new_id`` di 0 fallirà, poiché l'alternativa base del tassello non può essere spostata.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_columns:

.. rst-class:: classref-method

|void| **set_tile_animation_columns**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_columns\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_columns>`

Imposta il numero di colonne nel layout di animazione del tassello alle coordinate ``atlas_coords``. Se impostato su 0, i diversi fotogrammi dell'animazione saranno disposti come una singola linea orizzontale nell'atlante.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frame_duration:

.. rst-class:: classref-method

|void| **set_tile_animation_frame_duration**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frame_index\: :ref:`int<class_int>`, duration\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frame_duration>`

Imposta la durata del fotogramma ``frame_index`` dell'animazione per il tassello alle coordinate ``atlas_coords`` su ``duration``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_frames_count:

.. rst-class:: classref-method

|void| **set_tile_animation_frames_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, frames_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_frames_count>`

Imposta il numero di fotogrammi di animazione presenti nel tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_mode:

.. rst-class:: classref-method

|void| **set_tile_animation_mode**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, mode\: :ref:`TileAnimationMode<enum_TileSetAtlasSource_TileAnimationMode>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_mode>`

Imposta la modalità di animazione del tassello alle coordinate ``atlas_coords`` a ``mode``. Vedi anche :ref:`get_tile_animation_mode()<class_TileSetAtlasSource_method_get_tile_animation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_separation:

.. rst-class:: classref-method

|void| **set_tile_animation_separation**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, separation\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_separation>`

Imposta il margine (nei tasselli della griglia) tra ogni tassello nel layout di animazione del tassello alle coordinate ``atlas_coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetAtlasSource_method_set_tile_animation_speed:

.. rst-class:: classref-method

|void| **set_tile_animation_speed**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, speed\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileSetAtlasSource_method_set_tile_animation_speed>`

Imposta la velocità di animazione del tassello alle coordinate ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
