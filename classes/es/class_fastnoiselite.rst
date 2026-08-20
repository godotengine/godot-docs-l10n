:github_url: hide

.. _class_FastNoiseLite:

FastNoiseLite
=============

**Hereda:** :ref:`Noise<class_Noise>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Genera ruido utilizando la biblioteca FastNoiseLite.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase genera ruido utilizando la biblioteca FastNoiseLite, que es una colección de varios algoritmos de ruido incluyendo Celular, Perlin, Valor y más.

La mayoría de los valores de ruido generados están en el rango de ``[-1, 1]``, pero no siempre. Algunos de los algoritmos de ruido celular devuelven resultados por encima de ``1``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Enumeraciones
--------------------------

.. _enum_FastNoiseLite_NoiseType:

.. rst-class:: classref-enumeration

enum **NoiseType**: :ref:`🔗<enum_FastNoiseLite_NoiseType>`

.. _class_FastNoiseLite_constant_TYPE_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE** = ``5``

A una red de puntos se les asignan valores aleatorios y luego se interpolan en función de los valores vecinos.

.. _class_FastNoiseLite_constant_TYPE_VALUE_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE_CUBIC** = ``4``

Similar al ruido de valor (:ref:`TYPE_VALUE<class_FastNoiseLite_constant_TYPE_VALUE>`), pero más lento. Tiene más varianza en los picos y valles.

El ruido cúbico se puede usar para evitar ciertos artefactos al usar el ruido de valor para crear un mapa de relieve. En general, siempre debes usar este modo si el ruido de valor se está utilizando para un mapa de altura o un mapa de relieve.

.. _class_FastNoiseLite_constant_TYPE_PERLIN:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_PERLIN** = ``3``

Una red de gradientes aleatorios. Sus productos escalares se interpolan para obtener valores entre las redes.

.. _class_FastNoiseLite_constant_TYPE_CELLULAR:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_CELLULAR** = ``2``

Celular incluye tanto ruido de Worley como diagramas de Voronoi que crean varias regiones del mismo valor.

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX** = ``0``

A diferencia de :ref:`TYPE_PERLIN<class_FastNoiseLite_constant_TYPE_PERLIN>`, los gradientes existen en una red símplex en lugar de una red de cuadrícula, lo que evita artefactos direccionales. Internamente, utiliza el tipo de ruido OpenSimplex2 de FastNoiseLite.

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX_SMOOTH:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX_SMOOTH** = ``1``

Versión modificada de mayor calidad de :ref:`TYPE_SIMPLEX<class_FastNoiseLite_constant_TYPE_SIMPLEX>`, pero más lenta. Internamente utiliza el tipo de ruido OpenSimplex2S de FastNoiseLite.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_FractalType:

.. rst-class:: classref-enumeration

enum **FractalType**: :ref:`🔗<enum_FastNoiseLite_FractalType>`

.. _class_FastNoiseLite_constant_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_NONE** = ``0``

Sin ruido fractal.

.. _class_FastNoiseLite_constant_FRACTAL_FBM:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_FBM** = ``1``

Método que utiliza el movimiento browniano fraccional para combinar octavas en un fractal.

.. _class_FastNoiseLite_constant_FRACTAL_RIDGED:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_RIDGED** = ``2``

Método de combinación de octavas en un fractal que da como resultado un aspecto "estriado".

.. _class_FastNoiseLite_constant_FRACTAL_PING_PONG:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_PING_PONG** = ``3``

Método de combinación de octavas en un fractal con un efecto de ping pong.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularDistanceFunction:

.. rst-class:: classref-enumeration

enum **CellularDistanceFunction**: :ref:`🔗<enum_FastNoiseLite_CellularDistanceFunction>`

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN** = ``0``

Distancia euclidiana al punto más cercano.

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN_SQUARED:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN_SQUARED** = ``1``

Distancia euclidiana al cuadrado al punto más cercano.

.. _class_FastNoiseLite_constant_DISTANCE_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_MANHATTAN** = ``2``

Distancia de Manhattan (métrica de taxi) al punto más cercano.

.. _class_FastNoiseLite_constant_DISTANCE_HYBRID:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_HYBRID** = ``3``

Mezcla de :ref:`DISTANCE_EUCLIDEAN<class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN>` y :ref:`DISTANCE_MANHATTAN<class_FastNoiseLite_constant_DISTANCE_MANHATTAN>` para dar límites de celda curvados.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularReturnType:

.. rst-class:: classref-enumeration

enum **CellularReturnType**: :ref:`🔗<enum_FastNoiseLite_CellularReturnType>`

.. _class_FastNoiseLite_constant_RETURN_CELL_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_CELL_VALUE** = ``0``

La función de distancia celular devolverá el mismo valor para todos los puntos dentro de una celda.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE** = ``1``

La función de distancia celular devolverá un valor determinado por la distancia al punto más cercano.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2** = ``2``

La función de distancia celular devuelve la distancia al segundo punto más cercano.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_ADD** = ``3``

La distancia al punto más cercano se suma a la distancia al segundo punto más cercano.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_SUB** = ``4``

La distancia al punto más cercano se resta de la distancia al segundo punto más cercano.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_MUL** = ``5``

La distancia al punto más cercano se multiplica por la distancia al segundo punto más cercano.

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_DIV** = ``6``

La distancia al punto más cercano se divide por la distancia al segundo punto más cercano.

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpType:

.. rst-class:: classref-enumeration

enum **DomainWarpType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX** = ``0``

El dominio se distorsiona utilizando el algoritmo de ruido simplex.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX_REDUCED:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX_REDUCED** = ``1``

El dominio se distorsiona utilizando una versión simplificada del algoritmo de ruido simplex.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_BASIC_GRID:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_BASIC_GRID** = ``2``

El dominio se distorsiona utilizando una simple rejilla de ruido (no tan suave como los otros métodos, pero más eficiente).

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpFractalType:

.. rst-class:: classref-enumeration

enum **DomainWarpFractalType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpFractalType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_NONE** = ``0``

Sin ruido fractal para distorsionar el espacio.

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_PROGRESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_PROGRESSIVE** = ``1``

Distorsionar el espacio progresivamente, octava por octava, resulta en una distorsión más "licuada".

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_INDEPENDENT:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_INDEPENDENT** = ``2``

Distorsionar el espacio independientemente para cada octava, resulta en una distorsión más caótica.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_FastNoiseLite_property_cellular_distance_function:

.. rst-class:: classref-property

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **cellular_distance_function** = ``0`` :ref:`🔗<class_FastNoiseLite_property_cellular_distance_function>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_distance_function**\ (\ value\: :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>`\ )
- :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **get_cellular_distance_function**\ (\ )

Determina cómo se calcula la distancia al punto más cercano/segundo más cercano.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_jitter:

.. rst-class:: classref-property

:ref:`float<class_float>` **cellular_jitter** = ``1.0`` :ref:`🔗<class_FastNoiseLite_property_cellular_jitter>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_jitter**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cellular_jitter**\ (\ )

Distancia máxima que un punto puede moverse fuera de su posición en la cuadrícula. Establécela como ``0`` para una cuadrícula uniforme.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_return_type:

.. rst-class:: classref-property

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **cellular_return_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_cellular_return_type>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_return_type**\ (\ value\: :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>`\ )
- :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **get_cellular_return_type**\ (\ )

Tipo de retorno de los cálculos de ruido celular.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_amplitude** = ``30.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_amplitude**\ (\ )

Establece la distancia máxima de deformación desde el origen.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **domain_warp_enabled** = ``false`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_domain_warp_enabled**\ (\ )

Si está habilitado, se utiliza otra instancia de FastNoiseLite para deformar el espacio, lo que resulta en una distorsión del ruido.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_gain**\ (\ )

Determina la fuerza de cada capa subsiguiente del ruido que se utiliza para deformar el espacio.

Un valor bajo pone más énfasis en las capas base de baja frecuencia, mientras que un valor alto pone más énfasis en las capas de alta frecuencia.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_lacunarity** = ``6.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_lacunarity**\ (\ )

El cambio en la frecuencia entre octavas, también conocido como "lacunaridad", del ruido fractal que deforma el espacio. Aumentar este valor resulta en octavas más altas, produciendo ruido con detalles más finos y una apariencia más áspera.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **domain_warp_fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_domain_warp_fractal_octaves**\ (\ )

El número de capas de ruido que se muestrean para obtener el valor final para el ruido fractal que deforma el espacio.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_type:

.. rst-class:: classref-property

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **domain_warp_fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_type**\ (\ value\: :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>`\ )
- :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **get_domain_warp_fractal_type**\ (\ )

El método para combinar octavas en un fractal que se utiliza para deformar el espacio.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_frequency** = ``0.05`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_frequency**\ (\ )

Frecuencia del ruido que deforma el espacio. La baja frecuencia resulta en un ruido suave, mientras que la alta frecuencia resulta en un ruido más áspero y granular.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_type:

.. rst-class:: classref-property

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **domain_warp_type** = ``0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_type**\ (\ value\: :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>`\ )
- :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **get_domain_warp_type**\ (\ )

El algoritmo de deformación.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_gain**\ (\ )

Determina la fuerza de cada capa subsiguiente de ruido en el ruido fractal.

Un valor bajo da más importancia a las capas base de baja frecuencia, mientras que un valor alto da más importancia a las capas de alta frecuencia.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_lacunarity** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_lacunarity**\ (\ )

Multiplicador de frecuencia entre octavas subsiguientes. Aumentar este valor resulta en octavas más altas que producen ruido con detalles más finos y una apariencia más áspera.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fractal_octaves**\ (\ )

El número de capas de ruido que se muestrean para obtener el valor final para los tipos de ruido fractal.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_ping_pong_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_ping_pong_strength** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_ping_pong_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_ping_pong_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_ping_pong_strength**\ (\ )

Establece la fuerza del tipo fractal ping pong.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_type:

.. rst-class:: classref-property

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_type**\ (\ value\: :ref:`FractalType<enum_FastNoiseLite_FractalType>`\ )
- :ref:`FractalType<enum_FastNoiseLite_FractalType>` **get_fractal_type**\ (\ )

El método para combinar octavas en un fractal.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_weighted_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_weighted_strength** = ``0.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_weighted_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_weighted_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_weighted_strength**\ (\ )

Una mayor ponderación significa que las octavas más altas tienen menos impacto si las octavas más bajas tienen un gran impacto.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.01`` :ref:`🔗<class_FastNoiseLite_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

La frecuencia para todos los tipos de ruido. Una frecuencia baja produce un ruido uniforme, mientras que una frecuencia alta produce un ruido más áspero y granular.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_noise_type:

.. rst-class:: classref-property

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **noise_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_noise_type>`

.. rst-class:: classref-property-setget

- |void| **set_noise_type**\ (\ value\: :ref:`NoiseType<enum_FastNoiseLite_NoiseType>`\ )
- :ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **get_noise_type**\ (\ )

El algoritmo de ruido utilizado.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_FastNoiseLite_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_offset**\ (\ )

Traduce las coordenadas de entrada de ruido mediante el :ref:`Vector3<class_Vector3>` dado.

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_FastNoiseLite_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

La semilla numérica aleatoria para todos los tipos de ruido.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
