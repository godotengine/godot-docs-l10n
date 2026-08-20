:github_url: hide

.. _class_NavigationPathQueryParameters2D:

NavigationPathQueryParameters2D
===============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fornisce parametri per le richieste sul percorso di navigazione 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Modificando varie proprietà di questo oggetto, come la posizione iniziale e di destinazione, è possibile configurare richieste di percorso sul :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo di NavigationPathQueryObject <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters2D_property_excluded_regions>`                 | ``[]``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters2D_property_included_regions>`                 | ``[]``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters2D_property_map>`                                           | ``RID()``         |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters2D_property_metadata_flags>`                     | ``7``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters2D_property_navigation_layers>`               | ``1``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters2D_property_path_postprocessing>`           | ``0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters2D_property_path_return_max_length>`     | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters2D_property_path_return_max_radius>`     | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters2D_property_path_search_max_distance>` | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters2D_property_path_search_max_polygons>` | ``4096``          |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>`       | ``0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters2D_property_simplify_epsilon>`                 | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters2D_property_simplify_path>`                       | ``false``         |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters2D_property_start_position>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters2D_property_target_position>`                   | ``Vector2(0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_NavigationPathQueryParameters2D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters2D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

La ricerca del percorso utilizza l'algoritmo di ricerca del percorso A\* predefinito.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters2D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

Applica un algoritmo a imbuto al corridoio del percorso grezzo trovato dall'algoritmo di ricerca del percorso. Ciò darà come risultato il percorso più breve possibile all'interno del corridoio del percorso. Questa post-elaborazione dipende molto dal layout del poligono della mesh di navigazione e dal corridoio creato. In particolare, i layout basati su tasselli o griglie possono risultare in angoli artificiali con movimento diagonale a causa di un corridoio di percorso frastagliato imposto dalle forme delle celle.

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

Centra ogni posizione del percorso al centro del bordo del poligono della mesh di navigazione del percorso. Ciò crea percorsi migliori per i layout basati su tasselli o griglie che limitano il movimento al centro delle celle.

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

Non applica alcuna post-elaborazione e restituisce il corridoio del percorso grezzo come trovato dall'argoritmo di rilevamento del percorso.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters2D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

Non includere metadati aggiuntivi sul percorso restituito.

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

Include il tipo di primitiva di navigazione (regione o collegamento) attraversata da ogni punto del percorso.

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

Include i :ref:`RID<class_RID>` delle regioni e dei collegamenti attraversati da ogni punto del percorso.

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

Includere gli ``ObjectID`` degli :ref:`Object<class_Object>` che gestiscono le regioni e collegano ogni punto del percorso.

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

Include tutti i metadati disponibili sul percorso restituito.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_NavigationPathQueryParameters2D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

La lista degli :ref:`RID<class_RID>` delle regioni che saranno escluse dalla ricerca del percorso. Usa :ref:`NavigationRegion2D.get_rid()<class_NavigationRegion2D_method_get_rid>` per ottenere il :ref:`RID<class_RID>` associato a un nodo :ref:`NavigationRegion2D<class_NavigationRegion2D>`.

\ **Nota:** L'array restituito è copiato e qualsiasi modifica non aggiornerà il valore della proprietà originale. Per aggiornare il valore è necessario modificare l'array restituito e quindi assegnarlo nuovamente alla proprietà.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

La lista degli :ref:`RID<class_RID>` delle regioni che saranno escluse dalla ricerca del percorso. Usa :ref:`NavigationRegion2D.get_rid()<class_NavigationRegion2D_method_get_rid>` per ottenere il :ref:`RID<class_RID>` associato a un nodo :ref:`NavigationRegion2D<class_NavigationRegion2D>`. Se lasciato vuoto, tutte le regioni saranno incluse. Se una regione è inclusa ed esclusa allo stesso tempo, sarà esclusa.

\ **Nota:** L'array restituito è copiato e qualsiasi modifica non aggiornerà il valore della proprietà originale. Per aggiornare il valore è necessario modificare l'array restituito e quindi assegnarlo nuovamente alla proprietà.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

Il :ref:`RID<class_RID>` della mappa di navigazione utilizzata nella richiesta del percorso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

Informazioni aggiuntive da includere nel percorso di navigazione.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

Gli strati di navigazione che la ricerca utilizzerà (come maschera di bit).

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

Post-elaborazione del percorso applicata al corridoio del percorso grezzo trovato dall':ref:`pathfinding_algorithm<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

La lunghezza massima consentita del percorso restituito in unità mondiali. Un percorso sarà troncato quando supera questa lunghezza. Un valore pari o inferiore a ``0`` è considerato disabilitato.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

Il raggio massimo consentito in unità mondiali che il percorso restituito può avere dall'inizio del percorso. Il percorso sarà troncato quando supera questo raggio. Un valore pari o inferiore a ``0`` è considerato disabilitato.

\ **Nota:** Questo eseguirà un'operazione di ritaglio a forma di cerchio sul percorso, con la prima posizione del percorso corrispondente al centro del cerchio.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

La distanza massima che un poligono cercato può avere dal poligono di partenza, prima che il pathfinding annulli la ricerca di un percorso verso il poligono di destinazione (potenzialmente irraggiungibile o molto lontano). In questo caso, il pathfinding si azzera e crea un percorso dal poligono di partenza al poligono trovato più vicino alla posizione di destinazione fino a quel momento. Un valore pari o inferiore a ``0`` è considerato illimitato. In caso di valore illimitato, il pathfinding cercherà in tutti i poligoni collegati al poligono di partenza finché non verrà trovato il poligono di destinazione o finché non saranno esaurite tutte le opzioni di ricerca disponibili.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

Il numero massimo di poligoni ricercati, prima che il pathfinding annulli la ricerca di un percorso verso il poligono di destinazione (potenzialmente irraggiungibile o molto lontano). In questo caso, il pathfinding si azzera e crea un percorso dal poligono di partenza al poligono trovato più vicino alla posizione di destinazione fino a quel momento. Un valore pari o inferiore a ``0`` è considerato illimitato. In caso di valore illimitato, il pathfinding cercherà in tutti i poligoni collegati al poligono di partenza finché non verrà trovato il poligono di destinazione o finché non saranno esaurite tutte le opzioni di ricerca poligonale disponibili.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

Algoritmo di ricerca del percorso utilizzato nella ricerca del percorso.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

La quantità di semplificazione del percorso in unità mondiali.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

Se ``true`` una versione semplificata del percorso sarà restituita, con i punti meno critici rimossi. La quantità di semplificazione è controllata da :ref:`simplify_epsilon<class_NavigationPathQueryParameters2D_property_simplify_epsilon>`. La semplificazione utilizza una variazione dell'algoritmo Ramer-Douglas-Peucker per decimare i punti della curva.

La semplificazione del percorso può aiutare a mitigare vari problemi di seguimento del percorso che possono sorgere con certi tipi di agenti e comportamenti di script. Ad esempio, agenti che "sterzano" o evitamento in "campi aperti".

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **start_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_start_position**\ (\ )

La posizione di partenza della ricerca del percorso in coordinate globali.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

La posizione di destinazione della ricerca del percorso in coordinate globali.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
