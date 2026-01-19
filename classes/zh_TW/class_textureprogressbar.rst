:github_url: hide

.. _class_TextureProgressBar:

TextureProgressBar
==================

**繼承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於紋理的進度條。適用於載入螢幕和生命或體力條。

.. rst-class:: classref-introduction-group

說明
----

TextureProgressBar 的工作方式類似於 :ref:`ProgressBar<class_ProgressBar>`\ ，但最多使用 3 個紋理，不使用 Godot 的 :ref:`Theme<class_Theme>` 資源。可用於建立水平、垂直和徑向進度條。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`                             | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`           | mouse_filter                                                                              | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>`           | ``false``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`       | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`         | ``360.0``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`       | ``0.0``                                                                      |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                                                       | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | step                                                                                      | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>`     | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_left<class_TextureProgressBar_property_stretch_margin_left>`         | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_right<class_TextureProgressBar_property_stretch_margin_right>`       | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_top<class_TextureProgressBar_property_stretch_margin_top>`           | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_over<class_TextureProgressBar_property_texture_over>`                       |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`               |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`texture_progress_offset<class_TextureProgressBar_property_texture_progress_offset>` | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_under<class_TextureProgressBar_property_texture_under>`                     |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_over<class_TextureProgressBar_property_tint_over>`                             | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_progress<class_TextureProgressBar_property_tint_progress>`                     | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_under<class_TextureProgressBar_property_tint_under>`                           | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_stretch_margin<class_TextureProgressBar_method_get_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_stretch_margin<class_TextureProgressBar_method_set_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_TextureProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_TextureProgressBar_FillMode>`

.. _class_TextureProgressBar_constant_FILL_LEFT_TO_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_LEFT_TO_RIGHT** = ``0``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 從左到右填充。

.. _class_TextureProgressBar_constant_FILL_RIGHT_TO_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_RIGHT_TO_LEFT** = ``1``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 從右到左填充。

.. _class_TextureProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 從上到下填充。

.. _class_TextureProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 自下而上填充。

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE** = ``4``

將節點變成徑向條形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 順時針填充。參閱\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 來控制條形填充的方式。

.. _class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_COUNTER_CLOCKWISE** = ``5``

將節點變成徑向條形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 逆時針填充。參閱\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 來控制條形填充的方式。

.. _class_TextureProgressBar_constant_FILL_BILINEAR_LEFT_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_LEFT_AND_RIGHT** = ``6``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 從中心開始填充，向左和向右擴充。

.. _class_TextureProgressBar_constant_FILL_BILINEAR_TOP_AND_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_TOP_AND_BOTTOM** = ``7``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 從中心開始填充，同時向頂部和底部擴充。

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE** = ``8``

將節點變成徑向條形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 從中心徑向填充，順時針和逆時針擴展。參閱\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 來控制條形填充的方式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TextureProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_TextureProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

填充方向。可能的取值見 :ref:`FillMode<enum_TextureProgressBar_FillMode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_nine_patch_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nine_patch_stretch** = ``false`` :ref:`🔗<class_TextureProgressBar_property_nine_patch_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_nine_patch_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_nine_patch_stretch**\ (\ )

If ``true``, Godot treats the bar's textures like in :ref:`NinePatchRect<class_NinePatchRect>`. Use the ``stretch_margin_*`` properties like :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` to set up the nine patch's 3×3 grid. When using a radial :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`, this setting will only enable stretching for :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`, while :ref:`texture_under<class_TextureProgressBar_property_texture_under>` and :ref:`texture_over<class_TextureProgressBar_property_texture_over>` will be treated like in :ref:`NinePatchRect<class_NinePatchRect>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_center_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **radial_center_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_radial_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_radial_center_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_radial_center_offset**\ (\ )

Offsets :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` if :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` is :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>`, or :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`.

\ **Note:** The effective radial center always stays within the :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` bounds. If you need to move it outside the texture's bounds, modify the :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` to contain additional empty space where needed.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_fill_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_fill_degrees** = ``360.0`` :ref:`🔗<class_TextureProgressBar_property_radial_fill_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_fill_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fill_degrees**\ (\ )

Upper limit for the fill of :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` if :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` is :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>`, or :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. When the node's ``value`` is equal to its ``max_value``, the texture fills up to this angle.

See :ref:`Range.value<class_Range_property_value>`, :ref:`Range.max_value<class_Range_property_max_value>`.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_initial_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_initial_angle** = ``0.0`` :ref:`🔗<class_TextureProgressBar_property_radial_initial_angle>`

.. rst-class:: classref-property-setget

- |void| **set_radial_initial_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radial_initial_angle**\ (\ )

Starting angle for the fill of :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` if :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` is :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`, :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>`, or :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>`. When the node's ``value`` is equal to its ``min_value``, the texture doesn't show up at all. When the ``value`` increases, the texture fills and tends towards :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`.

\ **Note:** :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` is wrapped between ``0`` and ``360`` degrees (inclusive).

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_bottom** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The height of the 9-patch's bottom row. A margin of 16 means the 9-slice's bottom corners and side will have a height of 16 pixels. You can set all 4 margin values individually to create panels with non-uniform borders. Only effective if :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_left** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The width of the 9-patch's left column. Only effective if :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_right** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The width of the 9-patch's right column. Only effective if :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_top** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The height of the 9-patch's top row. Only effective if :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_over:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_over** :ref:`🔗<class_TextureProgressBar_property_texture_over>`

.. rst-class:: classref-property-setget

- |void| **set_over_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_over_texture**\ (\ )

在進度條至上繪製的 :ref:`Texture2D<class_Texture2D>`\ 。可用於新增高光，也可用於新增遮擋部分 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的上層邊框。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_progress** :ref:`🔗<class_TextureProgressBar_property_texture_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_progress_texture**\ (\ )

被裁剪的 :ref:`Texture2D<class_Texture2D>`\ 。裁剪基於該節點的 ``value`` 和 :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`\ 。隨著 ``value`` 的增加，該紋理將被填滿。當 ``value`` 達到 ``max_value`` 時，它將完整顯示。如果 ``value`` 等於 ``min_value``\ ，則它根本不顯示。

\ ``value`` 屬性來自 :ref:`Range<class_Range>`\ 。參見 :ref:`Range.value<class_Range_property_value>`\ 、\ :ref:`Range.min_value<class_Range_property_min_value>`\ 、\ :ref:`Range.max_value<class_Range_property_max_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_progress_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_texture_progress_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_progress_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_progress_offset**\ (\ )

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的偏移量。對於帶有花哨的邊框的 :ref:`texture_over<class_TextureProgressBar_property_texture_over>` 和 :ref:`texture_under<class_TextureProgressBar_property_texture_under>` 很有用，可以避免進度紋理的邊緣透明。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_under:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_under** :ref:`🔗<class_TextureProgressBar_property_texture_under>`

.. rst-class:: classref-property-setget

- |void| **set_under_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_under_texture**\ (\ )

在進度條下繪製的 :ref:`Texture2D<class_Texture2D>`\ 。該進度條的背景。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_over:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_over** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_over>`

.. rst-class:: classref-property-setget

- |void| **set_tint_over**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_over**\ (\ )

Multiplies the color of the bar's :ref:`texture_over<class_TextureProgressBar_property_texture_over>` texture. The effect is similar to :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`, except it only affects this specific texture instead of the entire node.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_progress:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_progress** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_progress>`

.. rst-class:: classref-property-setget

- |void| **set_tint_progress**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_progress**\ (\ )

Multiplies the color of the bar's :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_under:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_under** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_under>`

.. rst-class:: classref-property-setget

- |void| **set_tint_under**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_under**\ (\ )

Multiplies the color of the bar's :ref:`texture_under<class_TextureProgressBar_property_texture_under>` texture.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TextureProgressBar_method_get_stretch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_TextureProgressBar_method_get_stretch_margin>`

返回給定索引的拉伸邊距。見 :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` 及相關屬性。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_method_set_stretch_margin:

.. rst-class:: classref-method

|void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TextureProgressBar_method_set_stretch_margin>`

設定給定索引的拉伸邊距。見 :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` 及相關屬性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
