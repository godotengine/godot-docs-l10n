:github_url: hide

.. _class_FastNoiseLite:

FastNoiseLite
=============

**Eredita:** :ref:`Noise<class_Noise>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Genera noise tramite la libreria FastNoiseLite.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe genera un noise attraverso la libreria FastNoiseLite, che è una raccolta di diversi algoritmi di noise tra cui Cellular, Perlin, Value, e altri.

La maggior parte dei valori di noise generati rientra nell'intervallo ``[-1, 1]``, ma non sempre. Alcuni degli algoritmi di cellular noise restituiscono risultati superiori a ``1``.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` | :ref:`cellular_distance_function<class_FastNoiseLite_property_cellular_distance_function>`         | ``0``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`cellular_jitter<class_FastNoiseLite_property_cellular_jitter>`                               | ``1.0``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>`             | :ref:`cellular_return_type<class_FastNoiseLite_property_cellular_return_type>`                     | ``1``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`domain_warp_amplitude<class_FastNoiseLite_property_domain_warp_amplitude>`                   | ``30.0``             |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`domain_warp_enabled<class_FastNoiseLite_property_domain_warp_enabled>`                       | ``false``            |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`domain_warp_fractal_gain<class_FastNoiseLite_property_domain_warp_fractal_gain>`             | ``0.5``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`domain_warp_fractal_lacunarity<class_FastNoiseLite_property_domain_warp_fractal_lacunarity>` | ``6.0``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                        | :ref:`domain_warp_fractal_octaves<class_FastNoiseLite_property_domain_warp_fractal_octaves>`       | ``5``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>`       | :ref:`domain_warp_fractal_type<class_FastNoiseLite_property_domain_warp_fractal_type>`             | ``1``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`domain_warp_frequency<class_FastNoiseLite_property_domain_warp_frequency>`                   | ``0.05``             |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>`                     | :ref:`domain_warp_type<class_FastNoiseLite_property_domain_warp_type>`                             | ``0``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`fractal_gain<class_FastNoiseLite_property_fractal_gain>`                                     | ``0.5``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`fractal_lacunarity<class_FastNoiseLite_property_fractal_lacunarity>`                         | ``2.0``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                        | :ref:`fractal_octaves<class_FastNoiseLite_property_fractal_octaves>`                               | ``5``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`fractal_ping_pong_strength<class_FastNoiseLite_property_fractal_ping_pong_strength>`         | ``2.0``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`FractalType<enum_FastNoiseLite_FractalType>`                           | :ref:`fractal_type<class_FastNoiseLite_property_fractal_type>`                                     | ``1``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`fractal_weighted_strength<class_FastNoiseLite_property_fractal_weighted_strength>`           | ``0.0``              |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                    | :ref:`frequency<class_FastNoiseLite_property_frequency>`                                           | ``0.01``             |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`NoiseType<enum_FastNoiseLite_NoiseType>`                               | :ref:`noise_type<class_FastNoiseLite_property_noise_type>`                                         | ``1``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                | :ref:`offset<class_FastNoiseLite_property_offset>`                                                 | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                        | :ref:`seed<class_FastNoiseLite_property_seed>`                                                     | ``0``                |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_FastNoiseLite_NoiseType:

.. rst-class:: classref-enumeration

enum **NoiseType**: :ref:`🔗<enum_FastNoiseLite_NoiseType>`

.. _class_FastNoiseLite_constant_TYPE_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE** = ``5``

A un reticolo di punti sono assegnati valori casuali, quindi interpolati in base ai valori adiacenti.

.. _class_FastNoiseLite_constant_TYPE_VALUE_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE_CUBIC** = ``4``

Simile al value noise (:ref:`TYPE_VALUE<class_FastNoiseLite_constant_TYPE_VALUE>`), ma più lento. Ha una maggiore varianza nei picchi e nelle valli.

Il cubic noise può aiutare ad evitare alcuni artefatti quando si utilizza il Value noise per creare una mappa di rilievo. In generale, dovresti sempre usare questa modalità se il value noise è utilizzato per una heightmap o una mappa di rilievo.

.. _class_FastNoiseLite_constant_TYPE_PERLIN:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_PERLIN** = ``3``

Un reticolo di gradienti casuali. I loro prodotti scalari sono interpolati per ottenere valori tra i reticoli.

.. _class_FastNoiseLite_constant_TYPE_CELLULAR:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_CELLULAR** = ``2``

Cellular include sia il Worley noise sia i diagrammi di Voronoi, che creano varie regioni con lo stesso valore.

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX** = ``0``

A differenza di :ref:`TYPE_PERLIN<class_FastNoiseLite_constant_TYPE_PERLIN>`, i gradienti esistono in un reticolo simplesso anziché in un reticolo a griglia, evitando artefatti direzionali. Utilizza internamente il tipo di rumore OpenSimplex2 di FastNoiseLite.

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX_SMOOTH:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX_SMOOTH** = ``1``

Versione modificata e di qualità superiore di :ref:`TYPE_SIMPLEX<class_FastNoiseLite_constant_TYPE_SIMPLEX>`, ma più lenta. Utilizza internamente il tipo di noise OpenSimplex2S di FastNoiseLite.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_FractalType:

.. rst-class:: classref-enumeration

enum **FractalType**: :ref:`🔗<enum_FastNoiseLite_FractalType>`

.. _class_FastNoiseLite_constant_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_NONE** = ``0``

Nessun noise di frattale.

.. _class_FastNoiseLite_constant_FRACTAL_FBM:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_FBM** = ``1``

Metodo che utilizza il moto browniano frazionario per combinare le ottave in un frattale.

.. _class_FastNoiseLite_constant_FRACTAL_RIDGED:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_RIDGED** = ``2``

Metodo che combina le ottave in un frattale producendo un aspetto "increspato".

.. _class_FastNoiseLite_constant_FRACTAL_PING_PONG:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_PING_PONG** = ``3``

Metodo che combina le ottave in un frattale con un effetto ping pong.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularDistanceFunction:

.. rst-class:: classref-enumeration

enum **CellularDistanceFunction**: :ref:`🔗<enum_FastNoiseLite_CellularDistanceFunction>`

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN** = ``0``

Distanza euclidea dal punto più vicino.

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN_SQUARED:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN_SQUARED** = ``1``

Distanza euclidea al quadrato dal punto più vicino.

.. _class_FastNoiseLite_constant_DISTANCE_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_MANHATTAN** = ``2``

Distanza di Manhattan (nel sistema metrico dei taxi) dal punto più vicino.

.. _class_FastNoiseLite_constant_DISTANCE_HYBRID:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_HYBRID** = ``3``

Misto tra :ref:`DISTANCE_EUCLIDEAN<class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN>` e :ref:`DISTANCE_MANHATTAN<class_FastNoiseLite_constant_DISTANCE_MANHATTAN>` per fornire bordi di celle curvi.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularReturnType:

.. rst-class:: classref-enumeration

enum **CellularReturnType**: :ref:`🔗<enum_FastNoiseLite_CellularReturnType>`

.. _class_FastNoiseLite_constant_RETURN_CELL_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_CELL_VALUE** = ``0``

La funzione di distanza cellulare restituirà lo stesso valore per tutti i punti all'interno di una cella.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE** = ``1``

La funzione di distanza cellulare restituirà un valore determinato dalla distanza dal punto più vicino.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2** = ``2``

La funzione di distanza cellulare restituisce la distanza dal secondo punto più vicino.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_ADD** = ``3``

La distanza dal punto più vicino è aggiunta alla distanza dal secondo punto più vicino.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_SUB** = ``4``

La distanza dal punto più vicino è sottratta dalla distanza dal secondo punto più vicino.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_MUL** = ``5``

La distanza dal punto più vicino è moltiplicata per la distanza dal secondo punto più vicino.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_DIV** = ``6``

La distanza dal punto più vicino è divisa per la distanza dal secondo punto più vicino.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpType:

.. rst-class:: classref-enumeration

enum **DomainWarpType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX** = ``0``

Il dominio è deformato utilizzando l'algoritmo del noise simplesso.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX_REDUCED:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX_REDUCED** = ``1``

Il dominio è deformato utilizzando una versione semplificata dell'algoritmo del noise simplesso.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_BASIC_GRID:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_BASIC_GRID** = ``2``

Il dominio è deformato attraverso una semplice griglia di noise (non così uniforme come gli altri metodi, ma più performante).

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpFractalType:

.. rst-class:: classref-enumeration

enum **DomainWarpFractalType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpFractalType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_NONE** = ``0``

Nessun noise di frattale per deformare lo spazio.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_PROGRESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_PROGRESSIVE** = ``1``

Deforma lo spazio progressivamente, ottava per ottava, risultando in una distorsione più "liquefatta".

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_INDEPENDENT:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_INDEPENDENT** = ``2``

Deforma lo spazio indipendentemente per ogni ottava, risultando in una distorsione più caotica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FastNoiseLite_property_cellular_distance_function:

.. rst-class:: classref-property

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **cellular_distance_function** = ``0`` :ref:`🔗<class_FastNoiseLite_property_cellular_distance_function>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_distance_function**\ (\ value\: :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>`\ )
- :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **get_cellular_distance_function**\ (\ )

Determina come viene calcolata la distanza dal punto più vicino, o secondo più vicino.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_jitter:

.. rst-class:: classref-property

:ref:`float<class_float>` **cellular_jitter** = ``1.0`` :ref:`🔗<class_FastNoiseLite_property_cellular_jitter>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_jitter**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cellular_jitter**\ (\ )

Distanza massima a cui un punto può spostarsi dalla sua posizione sulla griglia. Imposta su ``0`` per una griglia uniforme.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_return_type:

.. rst-class:: classref-property

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **cellular_return_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_cellular_return_type>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_return_type**\ (\ value\: :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>`\ )
- :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **get_cellular_return_type**\ (\ )

Tipo restituito dai calcoli di noise cellulare.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_amplitude** = ``30.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_amplitude**\ (\ )

Imposta la distanza massima di avvolgimento dall'origine.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **domain_warp_enabled** = ``false`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_domain_warp_enabled**\ (\ )

Se abilitata, un'altra istanza di FastNoiseLite viene utilizzata per deformare lo spazio, provocando una distorsione del noise.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_gain**\ (\ )

Definisce l'intensità di ogni strato successivo del noise che è utilizzato per deformare lo spazio.

Un valore basso pone maggiore enfasi sugli strati base a frequenza più bassa, mentre un valore alto pone maggiore enfasi sugli strati a frequenza più alta.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_lacunarity** = ``6.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_lacunarity**\ (\ )

Il cambiamento di frequenza tra le ottave, anche conosciuta come "lacunarità", del noise frattale che deforma lo spazio. Aumentando questo valore si ottengono ottave più alte, producendo noise con dettagli più fini e un aspetto più ruvido.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **domain_warp_fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_domain_warp_fractal_octaves**\ (\ )

Il numero di strati campionati del noise per ottenere il valore finale del noise frattale che deforma lo spazio.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_type:

.. rst-class:: classref-property

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **domain_warp_fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_type**\ (\ value\: :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>`\ )
- :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **get_domain_warp_fractal_type**\ (\ )

Il metodo per combinare le ottave in un frattale che è utilizzato per deformare lo spazio.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_frequency** = ``0.05`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_frequency**\ (\ )

Frequenza del noise che deforma lo spazio. Le basse frequenze producono un noise uniforme, mentre le alte frequenze producono un noise più ruvido e granulare.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_type:

.. rst-class:: classref-property

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **domain_warp_type** = ``0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_type**\ (\ value\: :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>`\ )
- :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **get_domain_warp_type**\ (\ )

L'algoritmo di avvolgimento.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_gain**\ (\ )

Definisce l'intensità di ogni strato successivo di noise nel noise frattale.

Un valore basso pone maggiore enfasi sugli strati base a frequenza più bassa, mentre un valore alto pone maggiore enfasi sugli strati a frequenza più alta.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_lacunarity** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_lacunarity**\ (\ )

Moltiplicatore di frequenza tra le ottave successive. Aumentando questo valore si ottengono ottave più alte che producono noise con dettagli più fini e un aspetto più ruvido.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fractal_octaves**\ (\ )

Il numero di strati di noise campionati per ottenere il valore finale per i tipi di noise frattali.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_ping_pong_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_ping_pong_strength** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_ping_pong_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_ping_pong_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_ping_pong_strength**\ (\ )

Imposta l'intensità del tipo ping pong frattale.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_type:

.. rst-class:: classref-property

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_type**\ (\ value\: :ref:`FractalType<enum_FastNoiseLite_FractalType>`\ )
- :ref:`FractalType<enum_FastNoiseLite_FractalType>` **get_fractal_type**\ (\ )

Il metodo per combinare ottave in un frattale.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_weighted_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_weighted_strength** = ``0.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_weighted_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_weighted_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_weighted_strength**\ (\ )

Un peso più elevato significa che le ottave più alte hanno un impatto minore se le ottave inferiori hanno un impatto elevato.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.01`` :ref:`🔗<class_FastNoiseLite_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

La frequenza per tutti i tipi di noise. Le frequenze basse producono un noise uniforme, mentre le frequenze alte producono un noise più ruvido e granulare.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_noise_type:

.. rst-class:: classref-property

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **noise_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_noise_type>`

.. rst-class:: classref-property-setget

- |void| **set_noise_type**\ (\ value\: :ref:`NoiseType<enum_FastNoiseLite_NoiseType>`\ )
- :ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **get_noise_type**\ (\ )

L'algoritmo di noise utilizzato.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_FastNoiseLite_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_offset**\ (\ )

Traduce le coordinate di input del noise con il :ref:`Vector3<class_Vector3>` fornito.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_FastNoiseLite_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Il seed numerico casuale per tutti i tipi di noise.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
