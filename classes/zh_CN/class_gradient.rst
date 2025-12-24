:github_url: hide

.. _class_Gradient:

Gradient
========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

颜色过渡。

.. rst-class:: classref-introduction-group

描述
----

该资源通过定义一组彩色点以及如何在它们之间进行插值来描述颜色过渡。

另见 :ref:`Curve<class_Curve>`\ ，它支持更复杂的缓动方法，但不支持颜色。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`           | :ref:`colors<class_Gradient_property_colors>`                                       | ``PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)`` |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`ColorSpace<enum_Gradient_ColorSpace>`               | :ref:`interpolation_color_space<class_Gradient_property_interpolation_color_space>` | ``0``                                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`InterpolationMode<enum_Gradient_InterpolationMode>` | :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>`               | ``0``                                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`       | :ref:`offsets<class_Gradient_property_offsets>`                                     | ``PackedFloat32Array(0, 1)``                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------+----------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_point<class_Gradient_method_add_point>`\ (\ offset\: :ref:`float<class_float>`, color\: :ref:`Color<class_Color>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_color<class_Gradient_method_get_color>`\ (\ point\: :ref:`int<class_int>`\ )                                         |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_offset<class_Gradient_method_get_offset>`\ (\ point\: :ref:`int<class_int>`\ )                                       |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_point_count<class_Gradient_method_get_point_count>`\ (\ ) |const|                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_point<class_Gradient_method_remove_point>`\ (\ point\: :ref:`int<class_int>`\ )                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`reverse<class_Gradient_method_reverse>`\ (\ )                                                                            |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`sample<class_Gradient_method_sample>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_color<class_Gradient_method_set_color>`\ (\ point\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )      |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_offset<class_Gradient_method_set_offset>`\ (\ point\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ )   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Gradient_InterpolationMode:

.. rst-class:: classref-enumeration

enum **InterpolationMode**: :ref:`🔗<enum_Gradient_InterpolationMode>`

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_LINEAR** = ``0``

线性插值。

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_CONSTANT** = ``1``

常量插值，颜色会在每个点上突变，在点和点之间保持一致。在某些情况下用于渐变纹理时，可能会造成明显的锯齿。

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_CUBIC:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_CUBIC** = ``2``

三次插值。

.. rst-class:: classref-item-separator

----

.. _enum_Gradient_ColorSpace:

.. rst-class:: classref-enumeration

enum **ColorSpace**: :ref:`🔗<enum_Gradient_ColorSpace>`

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_SRGB** = ``0``

sRGB 色彩空间。

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_LINEAR_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_LINEAR_SRGB** = ``1``

线性 sRGB 色彩空间。

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_OKLAB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_OKLAB** = ``2``

`Oklab <https://bottosson.github.io/posts/oklab/>`__ 色彩空间。该色彩空间能够在不同颜色之间进行平滑、外观统一的过渡。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Gradient_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)`` :ref:`🔗<class_Gradient_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

渐变的颜色，类型为 :ref:`PackedColorArray<class_PackedColorArray>`\ 。

\ **注意：**\ 设置该属性会一次性更新所有颜色。单独更改某个颜色请使用 :ref:`set_color()<class_Gradient_method_set_color>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_color_space:

.. rst-class:: classref-property

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **interpolation_color_space** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_color_space>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_color_space**\ (\ value\: :ref:`ColorSpace<enum_Gradient_ColorSpace>`\ )
- :ref:`ColorSpace<enum_Gradient_ColorSpace>` **get_interpolation_color_space**\ (\ )

用于在渐变点之间进行插值的色彩空间。不影响返回的颜色，返回的颜色始终在 sRGB 空间。

\ **注意：**\ :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` 为 :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>` 时该设置无效。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_mode:

.. rst-class:: classref-property

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **interpolation_mode** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_mode**\ (\ value\: :ref:`InterpolationMode<enum_Gradient_InterpolationMode>`\ )
- :ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **get_interpolation_mode**\ (\ )

用于在渐变点之间进行插值的算法。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_offsets:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **offsets** = ``PackedFloat32Array(0, 1)`` :ref:`🔗<class_Gradient_property_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_offsets**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_offsets**\ (\ )

渐变的偏移量，类型为 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

\ **注意：**\ 设置该属性会一次性更新所有偏移量。单独更改某个偏移量请使用 :ref:`set_offset()<class_Gradient_method_set_offset>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Gradient_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ offset\: :ref:`float<class_float>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_add_point>`

使用指定的偏移，将指定的颜色添加到该渐变中。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_color**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_color>`

返回渐变色在索引 ``point`` 处的颜色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_offset>`

返回渐变色在索引 ``point`` 处的偏移。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Gradient_method_get_point_count>`

返回渐变中的颜色数。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_remove_point>`

移除索引 ``point`` 处的颜色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Gradient_method_reverse>`

将渐变进行翻转/镜像。

\ **注意：**\ 这个方法会将所有点以渐变的中点进行镜像，\ :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` 为 :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>` 时可能产生意外的结果。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_sample:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_sample>`

返回偏移量 ``offset`` 插值后的颜色。\ ``offset`` 应当在 ``0.0`` 和 ``1.0`` 之间（含两端）。取值小于 ``0.0`` 返回的颜色与 ``0.0`` 相同，取值大于 ``1.0`` 返回的颜色与 ``1.0`` 相同。输入值不在该范围内时，请考虑对输入值使用 :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>`\ ，将输出值设为 ``0.0`` 和 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_color:

.. rst-class:: classref-method

|void| **set_color**\ (\ point\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_set_color>`

设置渐变色在索引 ``point`` 处的颜色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ point\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_set_offset>`

设置渐变色在索引 ``point`` 处的偏移。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
