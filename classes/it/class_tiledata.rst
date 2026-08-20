:github_url: hide

.. _class_TileData:

TileData
========

**Eredita:** :ref:`Object<class_Object>`

Impostazioni per un singolo tassello in un :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

L'oggetto **TileData** rappresenta un singolo tassello in un :ref:`TileSet<class_TileSet>`. Solitamente è modificato attraverso l'editor di tileset, ma si può modificare in fase di esecuzione attraverso :ref:`TileMapLayer._tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Segnali
--------------

.. _class_TileData_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileData_signal_changed>`

Emesso quando una qualsiasi delle proprietà viene modificata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TileData_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TileData_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_h**\ (\ )

Se ``true``, il tassello avrà la sua texture capovolta orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TileData_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_v**\ (\ )

Se ``true``, il tassello avrà la sua texture capovolta verticalmente.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_TileData_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Il :ref:`Material<class_Material>` da utilizzare per questo **TileData**. Può essere un :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` per utilizzare lo shader predefinito o un :ref:`ShaderMaterial<class_ShaderMaterial>` per utilizzare uno shader personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TileData_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Modulazione del colore del tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_probability:

.. rst-class:: classref-property

:ref:`float<class_float>` **probability** = ``1.0`` :ref:`🔗<class_TileData_property_probability>`

.. rst-class:: classref-property-setget

- |void| **set_probability**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_probability**\ (\ )

Probabilità relativa che questo tassello sia selezionato quando si disegna uno schema di tasselli a caso.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain** = ``-1`` :ref:`🔗<class_TileData_property_terrain>`

.. rst-class:: classref-property-setget

- |void| **set_terrain**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain**\ (\ )

L'ID del terreno dall'insieme di terreni usato dal tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain_set:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain_set** = ``-1`` :ref:`🔗<class_TileData_property_terrain_set>`

.. rst-class:: classref-property-setget

- |void| **set_terrain_set**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain_set**\ (\ )

L'ID dell'insieme di terreni usato dal tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_texture_origin:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_origin** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileData_property_texture_origin>`

.. rst-class:: classref-property-setget

- |void| **set_texture_origin**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_origin**\ (\ )

Scosta la posizione dove il tassello è disegnato.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_transpose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transpose** = ``false`` :ref:`🔗<class_TileData_property_transpose>`

.. rst-class:: classref-property-setget

- |void| **set_transpose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_transpose**\ (\ )

Se ``true``, il tassello sarà visualizzato trasposto, ovvero con gli UV della texture orizzontale e verticale scambiati.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileData_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Il vunto verticale del tassello utilizzato per determinare l'ordinamento in y.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_z_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **z_index** = ``0`` :ref:`🔗<class_TileData_property_z_index>`

.. rst-class:: classref-property-setget

- |void| **set_z_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_index**\ (\ )

L'indice di ordinamento di questo tassello, relativo a :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileData_method_add_collision_polygon:

.. rst-class:: classref-method

|void| **add_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_collision_polygon>`

Aggiunge un poligono di collisione al tassello sul livello di fisica del TileSet specificato.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_add_occluder_polygon:

.. rst-class:: classref-method

|void| **add_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_occluder_polygon>`

Aggiunge un poligono di occlusione per il tassello sul livello di occlusione con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_one_way_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_one_way_margin>`

Restituisce il margine unidirezionale (per piattaforme unidirezionali) del poligono all'indice ``polygon_index`` per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_points>`

Restituisce i punti del poligono all'indice ``polygon_index`` per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygons_count>`

Restituisce il numero di poligoni presenti nel tassello per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_angular_velocity>`

Restituisce la velocità angolare costante applicata agli oggetti che entrano in collisione con questo tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_linear_velocity>`

Restituisce la velocità lineare costante applicata agli oggetti che entrano in collisione con questo tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data>`

Restituisce il valore dei dati personalizzati per il livello di dati personalizzati con il nome ``layer_name``. Per verificare se esiste un livello di dati personalizzati, usa :ref:`has_custom_data()<class_TileData_method_has_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data_by_layer_id:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data_by_layer_id>`

Restituisce il valore dei dati personalizzati per il livello di dati personalizzati con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_navigation_polygon:

.. rst-class:: classref-method

:ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_navigation_polygon>`

Restituisce il poligono di navigazione del tassello per il livello di navigazione del TileSet con l'indice ``layer_id``.

\ ``flip_h``, ``flip_v`` e ``transpose`` consentono di trasformare il poligono restituito.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder>`

**Deprecato:** Use :ref:`get_occluder_polygon()<class_TileData_method_get_occluder_polygon>` instead.

Restituisce il poligono occlusore del tassello per il livello di occlusione del TileSet con l'indice ``layer_id``.

\ ``flip_h``, ``flip_v`` e ``transpose`` consentono di trasformare il poligono restituito.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygon:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygon>`

Restituisce il poligono di occlusione all'indice ``polygon_index`` dal livello di occlusione con l'indice ``layer_id`` del TileSet.

È possibile impostare i parametri ``flip_h``, ``flip_v`` e ``transpose`` su ``true`` per trasformare il poligono restituito.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygons_count>`

Restituisce il numero di poligoni occlusori del tassello nel livello di occlusione con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_get_terrain_peering_bit>`

Restituisce il bit di terreno del tassello per la direzione ``peering_bit`` specificata. Per verificare che una direzione sia valida, usa :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_has_custom_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_has_custom_data>`

Restituisce se esiste un livello di dati personalizzati con il nome ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_collision_polygon_one_way:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_is_collision_polygon_one_way>`

Restituisce se le collisioni unidirezionali sono abilitate per il poligono all'indice ``polygon_index`` per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_valid_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_is_valid_terrain_peering_bit>`

Restituisce se la direzione del ``peering_bit`` fornito è valida per questo tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_collision_polygon:

.. rst-class:: classref-method

|void| **remove_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_collision_polygon>`

Rimuove il poligono all'indice ``polygon_index`` per il livello di fisica con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_occluder_polygon:

.. rst-class:: classref-method

|void| **remove_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_occluder_polygon>`

Rimuove il poligono all'indice ``polygon_index`` per il livello di occlusione con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way>`

Abilita/disabilita le collisioni unidirezionali sul poligono all'indice ``polygon_index`` per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way_margin:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way_margin>`

Restituisce il margine unidirezionale (per piattaforme unidirezionali) del poligono all'indice ``polygon_index`` per il livello di fisica con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_points:

.. rst-class:: classref-method

|void| **set_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_points>`

Imposta i punti del poligono all'indice ``polygon_index`` per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygons_count:

.. rst-class:: classref-method

|void| **set_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygons_count>`

Imposta il conteggio dei poligoni per il livello di fisica del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_angular_velocity:

.. rst-class:: classref-method

|void| **set_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_constant_angular_velocity>`

Imposta la velocità angolare costante. Ciò non ruota il tassello. Questa velocità angolare è applicata agli oggetti che entrano in collisione con questo tassello.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_linear_velocity:

.. rst-class:: classref-method

|void| **set_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_TileData_method_set_constant_linear_velocity>`

Imposta la velocità lineare costante. Ciò non ruota il tassello. Questa velocità angolare è applicata agli oggetti che entrano in collisione con questo tassello. Utile per creare nastri trasportatori.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data:

.. rst-class:: classref-method

|void| **set_custom_data**\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data>`

Imposta il valore dei dati personalizzati del tassello per il livello di dati personalizzati del TileSet con il nome ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data_by_layer_id:

.. rst-class:: classref-method

|void| **set_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data_by_layer_id>`

Imposta il valore dei dati personalizzati del tassello per il livello di dati personalizzati del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_navigation_polygon:

.. rst-class:: classref-method

|void| **set_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ ) :ref:`🔗<class_TileData_method_set_navigation_polygon>`

Imposta il poligono di navigazione per il livello di navigazione del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder:

.. rst-class:: classref-method

|void| **set_occluder**\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder>`

**Deprecato:** Use :ref:`set_occluder_polygon()<class_TileData_method_set_occluder_polygon>` instead.

Imposta l'occlusore per il livello di occlusione del TileSet con l'indice ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygon:

.. rst-class:: classref-method

|void| **set_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygon>`

Imposta l'occlusore per il poligono all'indice ``polygon_index`` nel livello di fisica con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygons_count:

.. rst-class:: classref-method

|void| **set_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygons_count>`

Imposta il numero di poligoni occlusori nel livello di occlusione con l'indice ``layer_id`` del TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_terrain_peering_bit:

.. rst-class:: classref-method

|void| **set_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_terrain_peering_bit>`

Imposta il bit di terreno del tassello per la direzione ``peering_bit`` specificata. Per verificare che una direzione sia valida, usa :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
