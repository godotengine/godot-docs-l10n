:github_url: hide

.. _class_TileSetScenesCollectionSource:

TileSetScenesCollectionSource
=============================

**Eredita:** :ref:`TileSetSource<class_TileSetSource>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Espone un insieme di scene come tasselli per una risorsa :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Quando sono posizionati su un :ref:`TileMapLayer<class_TileMapLayer>`, i tasselli da **TileSetScenesCollectionSource** creeranno automaticamente un'istanza di una scena associata nella posizione della cella nel TileMapLayer.

Le scene vengono create come figlie del :ref:`TileMapLayer<class_TileMapLayer>` dopo che entra nell'albero, alla fine del frame (la loro creazione viene differita). Se si aggiunge rimuove un tassello di scena nel :ref:`TileMapLayer<class_TileMapLayer>` che è già all'interno dell'albero, il :ref:`TileMapLayer<class_TileMapLayer>` creerà automaticamente un'istanza o libererà la scena di conseguenza.

\ **Nota:** Tutte i tasselli di scena occupano un solo posto tassello e invece usano l'ID alternativo per identificare l'indice della scena. :ref:`TileSetSource.get_tiles_count()<class_TileSetSource_method_get_tiles_count>` restituirà sempre ``1``. Usa :ref:`get_scene_tiles_count()<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>` per ottenere un numero di scene in una **TileSetScenesCollectionSource**.

Usa questo codice se vuoi trovare il percorso della scena contenuta in un determinato tassello in :ref:`TileMapLayer<class_TileMapLayer>`:


.. tabs::

 .. code-tab:: gdscript

    var source_id = tile_map_layer.get_cell_source_id(Vector2i(x, y))
    if source_id > -1:
        var scene_source = tile_map_layer.tile_set.get_source(source_id)
        if scene_source is TileSetScenesCollectionSource:
            var alt_id = tile_map_layer.get_cell_alternative_tile(Vector2i(x, y))
            # Il PackedScene assegnato.
            var scene = scene_source.get_scene_tile_scene(alt_id)

 .. code-tab:: csharp

    int sourceId = tileMapLayer.GetCellSourceId(new Vector2I(x, y));
    if (sourceId > -1)
    {
        TileSetSource source = tileMapLayer.TileSet.GetSource(sourceId);
        if (source is TileSetScenesCollectionSource sceneSource)
        {
            int altId = tileMapLayer.GetCellAlternativeTile(new Vector2I(x, y));
            // Il PackedScene assegnato.
            PackedScene scene = sceneSource.GetSceneTileScene(altId);
        }
    }



.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`create_scene_tile<class_TileSetScenesCollectionSource_method_create_scene_tile>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ )              |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_next_scene_tile_id<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                        |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tile_id<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`\ (\ index\: :ref:`int<class_int>`\ )                                                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedScene<class_PackedScene>` | :ref:`get_scene_tile_scene<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_scene_tiles_count<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`\ (\ )                                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_scene_tile_id<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_scene_tile<class_TileSetScenesCollectionSource_method_remove_scene_tile>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_display_placeholder<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_id<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ )                                                  |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_scene_tile_scene<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileSetScenesCollectionSource_method_create_scene_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **create_scene_tile**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`, id_override\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_create_scene_tile>`

Crea un tassello basato su una scena dalla scena specificata.

Restituisce un ID univoco appena generato.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_next_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_next_scene_tile_id**\ (\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_next_scene_tile_id>`

Restituisce l'ID di scena che una chiamata successiva a :ref:`create_scene_tile()<class_TileSetScenesCollectionSource_method_create_scene_tile>` restituirebbe.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_display_placeholder>`

Restituisce se il tassello di scena con ``id`` visualizza un segnaposto nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_id>`

Restituisce l'ID tassello di scena del tassello di scena all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tile_scene:

.. rst-class:: classref-method

:ref:`PackedScene<class_PackedScene>` **get_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tile_scene>`

Restituisce la risorsa :ref:`PackedScene<class_PackedScene>` del tassello di scena con ``id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_get_scene_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_scene_tiles_count**\ (\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_get_scene_tiles_count>`

Restituisce il numero di tasselli di scena presenti in questa sorgente di TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_has_scene_tile_id:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_scene_tile_id**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_has_scene_tile_id>`

Restituisce se questa sorgente di TileSet ha un tassello di scena con l'``id`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_remove_scene_tile:

.. rst-class:: classref-method

|void| **remove_scene_tile**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_remove_scene_tile>`

Rimuovi il tassello di scena con l'``id`` fornito.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder:

.. rst-class:: classref-method

|void| **set_scene_tile_display_placeholder**\ (\ id\: :ref:`int<class_int>`, display_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_display_placeholder>`

Imposta se il tassello di scena con ``id`` debba visualizzare o meno un segnaposto nell'editor. Potrebbe essere utile per le scene che non sono visibili.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_id:

.. rst-class:: classref-method

|void| **set_scene_tile_id**\ (\ id\: :ref:`int<class_int>`, new_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_id>`

Modifica l'ID di un tassello di scena da ``id`` a ``new_id``. L'operazione fallirà se è già presente un tassello con un ID uguale a ``new_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetScenesCollectionSource_method_set_scene_tile_scene:

.. rst-class:: classref-method

|void| **set_scene_tile_scene**\ (\ id\: :ref:`int<class_int>`, packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_TileSetScenesCollectionSource_method_set_scene_tile_scene>`

Assegna una risorsa :ref:`PackedScene<class_PackedScene>` al tassello di scena con ``id``. L'operazione fallirà se la scena non estende :ref:`CanvasItem<class_CanvasItem>`, poiché sono necessarie proprietà di posizionamento per collocare la scena sul :ref:`TileMapLayer<class_TileMapLayer>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
