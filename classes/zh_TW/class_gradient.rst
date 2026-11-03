:github_url: hide

.. _class_Gradient:

Gradient
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

顏色過渡。

.. rst-class:: classref-introduction-group

說明
----

此資源透過定義一組彩色點以及如何在它們之間進行內插來描述顏色過渡。

另請參見 :ref:`Curve<class_Curve>`\ ，它支援更複雜的緩動方法，但不支援顏色。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_Gradient_InterpolationMode:

.. rst-class:: classref-enumeration

enum **InterpolationMode**: :ref:`🔗<enum_Gradient_InterpolationMode>`

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_LINEAR** = ``0``

線性插值。

.. _class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT:

.. rst-class:: classref-enumeration-constant

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **GRADIENT_INTERPOLATE_CONSTANT** = ``1``

常數插值，顏色會在每個點上突變，在點和點之間保持一致。在某些情況下用於漸變紋理時，可能會造成明顯的鋸齒。

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

sRGB 色彩空間。

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_LINEAR_SRGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_LINEAR_SRGB** = ``1``

線性 sRGB 色彩空間。

.. _class_Gradient_constant_GRADIENT_COLOR_SPACE_OKLAB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **GRADIENT_COLOR_SPACE_OKLAB** = ``2``

`Oklab <https://bottosson.github.io/posts/oklab/>`__ 色彩空間。該色彩空間能夠在不同顏色之間進行平滑、外觀均勻的過渡。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Gradient_property_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **colors** = ``PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)`` :ref:`🔗<class_Gradient_property_colors>`

.. rst-class:: classref-property-setget

- |void| **set_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_colors**\ (\ )

漸變的顏色，型別為 :ref:`PackedColorArray<class_PackedColorArray>`\ 。

\ **注意：**\ 設定該屬性會一次性更新所有顏色。單獨更改某個顏色請使用 :ref:`set_color()<class_Gradient_method_set_color>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_color_space:

.. rst-class:: classref-property

:ref:`ColorSpace<enum_Gradient_ColorSpace>` **interpolation_color_space** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_color_space>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_color_space**\ (\ value\: :ref:`ColorSpace<enum_Gradient_ColorSpace>`\ )
- :ref:`ColorSpace<enum_Gradient_ColorSpace>` **get_interpolation_color_space**\ (\ )

用於在漸變點之間進行插值的色彩空間。不影響回傳的顏色，回傳的顏色始終使用非線性 sRGB 編碼。

\ **注意：**\ :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` 為 :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>` 時該設定無效。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_interpolation_mode:

.. rst-class:: classref-property

:ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **interpolation_mode** = ``0`` :ref:`🔗<class_Gradient_property_interpolation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_interpolation_mode**\ (\ value\: :ref:`InterpolationMode<enum_Gradient_InterpolationMode>`\ )
- :ref:`InterpolationMode<enum_Gradient_InterpolationMode>` **get_interpolation_mode**\ (\ )

用於在漸變點之間進行插值的算法。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_property_offsets:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **offsets** = ``PackedFloat32Array(0, 1)`` :ref:`🔗<class_Gradient_property_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_offsets**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_offsets**\ (\ )

漸變的偏移量，型別為 :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ 。

\ **注意：**\ 設定該屬性會一次性更新所有偏移量。單獨更改某個偏移量請使用 :ref:`set_offset()<class_Gradient_method_set_offset>`\ 。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Gradient_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ offset\: :ref:`float<class_float>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_add_point>`

使用指定的偏移，將指定的顏色新增到該漸變的末尾。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_color**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_color>`

返回漸變色在索引 ``point`` 處的顏色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_get_offset>`

返回漸變色在索引 ``point`` 處的偏移。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_Gradient_method_get_point_count>`

返回漸變中的顏色數。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Gradient_method_remove_point>`

移除索引 ``point`` 處的顏色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_Gradient_method_reverse>`

將漸變進行翻轉/鏡像。

\ **注意：**\ 這個方法會將所有點以漸變的中點進行鏡像，\ :ref:`interpolation_mode<class_Gradient_property_interpolation_mode>` 為 :ref:`GRADIENT_INTERPOLATE_CONSTANT<class_Gradient_constant_GRADIENT_INTERPOLATE_CONSTANT>` 時可能產生意外的結果。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_sample:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **sample**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_sample>`

回傳偏移量 ``offset`` 插值後的顏色。\ ``offset`` 應當在 ``0.0`` 和 ``1.0`` 之間（含兩端）。取值小於 ``0.0`` 回傳的顏色與 ``0.0`` 相同，取值大於 ``1.0`` 回傳的顏色與 ``1.0`` 相同。輸入值不在該範圍內時，請考慮對輸入值使用 :ref:`@GlobalScope.remap()<class_@GlobalScope_method_remap>`\ ，將輸出值設為 ``0.0`` 和 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_color:

.. rst-class:: classref-method

|void| **set_color**\ (\ point\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Gradient_method_set_color>`

設定漸變色在索引 ``point`` 處的顏色。

.. rst-class:: classref-item-separator

----

.. _class_Gradient_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ point\: :ref:`int<class_int>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Gradient_method_set_offset>`

設定漸變色在索引 ``point`` 處的偏移。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
