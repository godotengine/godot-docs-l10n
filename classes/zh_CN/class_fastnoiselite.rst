:github_url: hide

.. _class_FastNoiseLite:

FastNoiseLite
=============

**继承：** :ref:`Noise<class_Noise>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

使用 FastNoiseLite 库生成噪声。

.. rst-class:: classref-introduction-group

描述
----

该类使用 FastNoiseLite 库生成噪声，该库是多种噪声算法的集合，包括 Cellular、Perlin、Value 等。

大多数生成的噪声值都在 ``[-1, 1]`` 范围内，但并非总是如此。一些蜂窝噪声算法返回高于 ``1`` 的结果。

.. rst-class:: classref-reftable-group

属性
----

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

枚举
----

.. _enum_FastNoiseLite_NoiseType:

.. rst-class:: classref-enumeration

enum **NoiseType**: :ref:`🔗<enum_FastNoiseLite_NoiseType>`

.. _class_FastNoiseLite_constant_TYPE_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE** = ``5``

点阵被分配随机值，然后根据相邻值进行插值。

.. _class_FastNoiseLite_constant_TYPE_VALUE_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_VALUE_CUBIC** = ``4``

类似于 Value 噪声（\ :ref:`TYPE_VALUE<class_FastNoiseLite_constant_TYPE_VALUE>`\ ），但速度较慢。波峰和波谷的变化更大。

在使用 Value 噪声创建凹凸贴图时，可以使用三次噪声来避免某些伪影。一般来说，如果 Value 噪声用于高度图或凹凸贴图，则应始终使用此模式。

.. _class_FastNoiseLite_constant_TYPE_PERLIN:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_PERLIN** = ``3``

随机渐变的一种格子。对它们的点积进行插值，以获得格子之间的值。

.. _class_FastNoiseLite_constant_TYPE_CELLULAR:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_CELLULAR** = ``2``

蜂窝包括 Worley 噪声图和 Voronoi 图，它们创建了相同值的不同区域。

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX** = ``0``

与 :ref:`TYPE_PERLIN<class_FastNoiseLite_constant_TYPE_PERLIN>` 不同，渐变存在于单纯形点阵中，而不是网格点阵中，从而避免了定向伪影。内部使用 FastNoiseLite 的 OpenSimplex2 噪声类型。

.. _class_FastNoiseLite_constant_TYPE_SIMPLEX_SMOOTH:

.. rst-class:: classref-enumeration-constant

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **TYPE_SIMPLEX_SMOOTH** = ``1``

对 :ref:`TYPE_SIMPLEX<class_FastNoiseLite_constant_TYPE_SIMPLEX>` 修改后得到的更高质量版本，但速度较慢。内部使用 FastNoiseLite 的 OpenSimplex2S 噪声类型。

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_FractalType:

.. rst-class:: classref-enumeration

enum **FractalType**: :ref:`🔗<enum_FastNoiseLite_FractalType>`

.. _class_FastNoiseLite_constant_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_NONE** = ``0``

无分形噪声。

.. _class_FastNoiseLite_constant_FRACTAL_FBM:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_FBM** = ``1``

使用分形布朗运动将八度音阶组合成分形的方法。

.. _class_FastNoiseLite_constant_FRACTAL_RIDGED:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_RIDGED** = ``2``

将八度音阶组合成分形的方法，从而产生一种“脊状”外观。

.. _class_FastNoiseLite_constant_FRACTAL_PING_PONG:

.. rst-class:: classref-enumeration-constant

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **FRACTAL_PING_PONG** = ``3``

将八度音阶组合成具有乒乓效果的分形的方法。

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularDistanceFunction:

.. rst-class:: classref-enumeration

enum **CellularDistanceFunction**: :ref:`🔗<enum_FastNoiseLite_CellularDistanceFunction>`

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN** = ``0``

到最近点的欧几里得距离。

.. _class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN_SQUARED:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_EUCLIDEAN_SQUARED** = ``1``

到最近点的欧几里得距离的平方。

.. _class_FastNoiseLite_constant_DISTANCE_MANHATTAN:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_MANHATTAN** = ``2``

到最近点的曼哈顿距离（出租车度量法）。

.. _class_FastNoiseLite_constant_DISTANCE_HYBRID:

.. rst-class:: classref-enumeration-constant

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **DISTANCE_HYBRID** = ``3``

:ref:`DISTANCE_EUCLIDEAN<class_FastNoiseLite_constant_DISTANCE_EUCLIDEAN>` 和 :ref:`DISTANCE_MANHATTAN<class_FastNoiseLite_constant_DISTANCE_MANHATTAN>` 的混合，以给出弯曲的单元格边界。

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_CellularReturnType:

.. rst-class:: classref-enumeration

enum **CellularReturnType**: :ref:`🔗<enum_FastNoiseLite_CellularReturnType>`

.. _class_FastNoiseLite_constant_RETURN_CELL_VALUE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_CELL_VALUE** = ``0``

蜂窝单元格距离函数，将为单元格内的所有点返回相同的值。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE** = ``1``

蜂窝单元格距离函数，将返回一个由到最近点的距离确定的值。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2** = ``2``

蜂窝单元格距离函数，将返回到第二最近点的距离。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_ADD** = ``3``

将最近点的距离与次近点的距离相加。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_SUB** = ``4``

将最近点的距离与次近点的距离相减。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_MUL** = ``5``

将最近点的距离与次近点的距离相乘。

.. _class_FastNoiseLite_constant_RETURN_DISTANCE2_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **RETURN_DISTANCE2_DIV** = ``6``

将最近点的距离与次近点的距离相除。

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpType:

.. rst-class:: classref-enumeration

enum **DomainWarpType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX** = ``0``

使用单纯形噪声算法，对域进行扭曲。

.. _class_FastNoiseLite_constant_DOMAIN_WARP_SIMPLEX_REDUCED:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_SIMPLEX_REDUCED** = ``1``

使用简化版的单纯形噪声算法，对域进行扭曲。

.. _class_FastNoiseLite_constant_DOMAIN_WARP_BASIC_GRID:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **DOMAIN_WARP_BASIC_GRID** = ``2``

使用简单的噪声栅格（不像其他方法那样平滑，但性能更高），对域进行扭曲。

.. rst-class:: classref-item-separator

----

.. _enum_FastNoiseLite_DomainWarpFractalType:

.. rst-class:: classref-enumeration

enum **DomainWarpFractalType**: :ref:`🔗<enum_FastNoiseLite_DomainWarpFractalType>`

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_NONE** = ``0``

没有用于扭曲空间的分形噪声。

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_PROGRESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_PROGRESSIVE** = ``1``

逐渐扭曲空间，一个八度一个八度，导致更“液化”的失真。

.. _class_FastNoiseLite_constant_DOMAIN_WARP_FRACTAL_INDEPENDENT:

.. rst-class:: classref-enumeration-constant

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **DOMAIN_WARP_FRACTAL_INDEPENDENT** = ``2``

为每个八度音阶独立地扭曲空间，从而导致更混乱的失真。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_FastNoiseLite_property_cellular_distance_function:

.. rst-class:: classref-property

:ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **cellular_distance_function** = ``0`` :ref:`🔗<class_FastNoiseLite_property_cellular_distance_function>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_distance_function**\ (\ value\: :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>`\ )
- :ref:`CellularDistanceFunction<enum_FastNoiseLite_CellularDistanceFunction>` **get_cellular_distance_function**\ (\ )

确定如何计算到最近/第二最近点的距离。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_jitter:

.. rst-class:: classref-property

:ref:`float<class_float>` **cellular_jitter** = ``1.0`` :ref:`🔗<class_FastNoiseLite_property_cellular_jitter>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_jitter**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cellular_jitter**\ (\ )

一个点可以离开其栅格位置的最大距离。对于偶数栅格，设置为 ``0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_cellular_return_type:

.. rst-class:: classref-property

:ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **cellular_return_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_cellular_return_type>`

.. rst-class:: classref-property-setget

- |void| **set_cellular_return_type**\ (\ value\: :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>`\ )
- :ref:`CellularReturnType<enum_FastNoiseLite_CellularReturnType>` **get_cellular_return_type**\ (\ )

蜂窝噪声计算的返回类型。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_amplitude** = ``30.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_amplitude**\ (\ )

设置距原点的最大扭曲距离。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **domain_warp_enabled** = ``false`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_domain_warp_enabled**\ (\ )

如果启用，则另一个 FastNoiseLite 实例将被用于扭曲空间，从而导致噪声失真。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_gain**\ (\ )

确定用于扭曲空间的噪声的每个后续层的强度。

较低的值更强调较低频率的基础层，而较高的值则更强调较高频率的层。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_fractal_lacunarity** = ``6.0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_fractal_lacunarity**\ (\ )

扭曲空间的分形噪声的八度音节之间的频率变化，也称为“间隙度”。增加此值，会导致更高的八度音阶，从而产生细节更精细、外观更粗糙的噪声。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **domain_warp_fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_domain_warp_fractal_octaves**\ (\ )

为获得扭曲空间的分形噪声的最终值而采样的噪声层数。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_fractal_type:

.. rst-class:: classref-property

:ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **domain_warp_fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_fractal_type**\ (\ value\: :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>`\ )
- :ref:`DomainWarpFractalType<enum_FastNoiseLite_DomainWarpFractalType>` **get_domain_warp_fractal_type**\ (\ )

将八度音阶组合成用于扭曲空间的分形的方法。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **domain_warp_frequency** = ``0.05`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_domain_warp_frequency**\ (\ )

扭曲空间的噪音频率。低频产生平滑的噪声，而高频产生更粗糙、颗粒状更明显的噪声。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_domain_warp_type:

.. rst-class:: classref-property

:ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **domain_warp_type** = ``0`` :ref:`🔗<class_FastNoiseLite_property_domain_warp_type>`

.. rst-class:: classref-property-setget

- |void| **set_domain_warp_type**\ (\ value\: :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>`\ )
- :ref:`DomainWarpType<enum_FastNoiseLite_DomainWarpType>` **get_domain_warp_type**\ (\ )

扭曲算法。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_gain** = ``0.5`` :ref:`🔗<class_FastNoiseLite_property_fractal_gain>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_gain**\ (\ )

确定分形噪声中噪声的每个后续层的强度。

较低的值更强调较低频率的基础层，而较高的值则更强调较高频率的层。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_lacunarity:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_lacunarity** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_lacunarity>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_lacunarity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_lacunarity**\ (\ )

后续八度音阶之间的倍频器。增加该值，会产生更高的八度音阶，从而产生细节更精细、外观更粗糙的噪声。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_octaves:

.. rst-class:: classref-property

:ref:`int<class_int>` **fractal_octaves** = ``5`` :ref:`🔗<class_FastNoiseLite_property_fractal_octaves>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_octaves**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fractal_octaves**\ (\ )

为获得分形噪声类型的最终值而采样的噪声层数。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_ping_pong_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_ping_pong_strength** = ``2.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_ping_pong_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_ping_pong_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_ping_pong_strength**\ (\ )

设置分形乒乓类型的强度。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_type:

.. rst-class:: classref-property

:ref:`FractalType<enum_FastNoiseLite_FractalType>` **fractal_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_fractal_type>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_type**\ (\ value\: :ref:`FractalType<enum_FastNoiseLite_FractalType>`\ )
- :ref:`FractalType<enum_FastNoiseLite_FractalType>` **get_fractal_type**\ (\ )

将八度音阶组合成分形的方法。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_fractal_weighted_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **fractal_weighted_strength** = ``0.0`` :ref:`🔗<class_FastNoiseLite_property_fractal_weighted_strength>`

.. rst-class:: classref-property-setget

- |void| **set_fractal_weighted_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fractal_weighted_strength**\ (\ )

较高的权重意味着如果较低的八度具有较大的影响，则较高的八度具有较小的影响。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.01`` :ref:`🔗<class_FastNoiseLite_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

所有噪声类型的频率。低频产生平滑的噪声，而高频产生更粗糙、颗粒状更明显的噪声。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_noise_type:

.. rst-class:: classref-property

:ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **noise_type** = ``1`` :ref:`🔗<class_FastNoiseLite_property_noise_type>`

.. rst-class:: classref-property-setget

- |void| **set_noise_type**\ (\ value\: :ref:`NoiseType<enum_FastNoiseLite_NoiseType>`\ )
- :ref:`NoiseType<enum_FastNoiseLite_NoiseType>` **get_noise_type**\ (\ )

所使用的噪声算法。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_FastNoiseLite_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_offset**\ (\ )

使用给定的 :ref:`Vector3<class_Vector3>` 对噪声输入坐标进行平移。

.. rst-class:: classref-item-separator

----

.. _class_FastNoiseLite_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_FastNoiseLite_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

所有噪声类型的随机数种子。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
