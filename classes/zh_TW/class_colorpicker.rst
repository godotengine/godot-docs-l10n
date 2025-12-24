:github_url: hide

.. _class_ColorPicker:

ColorPicker
===========

**繼承：** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

提供用於選擇或修改顏色的介面的小工具。

.. rst-class:: classref-introduction-group

說明
----

提供用於選擇或修改顏色的介面的小工具。還可以提供取色器（吸管）、顏色模式、預設等功能。

\ **注意：**\ 這個控制項就是取色器本身。如果你需要一個能夠彈出 **ColorPicker** 窗口的按鈕，可以改用 :ref:`ColorPickerButton<class_ColorPickerButton>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `Tween Interpolation Demo <https://godotengine.org/asset-library/asset/2733>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`can_add_swatches<class_ColorPicker_property_can_add_swatches>`       | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                | :ref:`color<class_ColorPicker_property_color>`                             | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`     | :ref:`color_mode<class_ColorPicker_property_color_mode>`                   | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`color_modes_visible<class_ColorPicker_property_color_modes_visible>` | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`deferred_mode<class_ColorPicker_property_deferred_mode>`             | ``false``             |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_alpha<class_ColorPicker_property_edit_alpha>`                   | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_intensity<class_ColorPicker_property_edit_intensity>`           | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`hex_visible<class_ColorPicker_property_hex_visible>`                 | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` | :ref:`picker_shape<class_ColorPicker_property_picker_shape>`               | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`presets_visible<class_ColorPicker_property_presets_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sampler_visible<class_ColorPicker_property_sampler_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sliders_visible<class_ColorPicker_property_sliders_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_preset<class_ColorPicker_method_add_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )                   |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_recent_preset<class_ColorPicker_method_add_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_preset<class_ColorPicker_method_erase_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_recent_preset<class_ColorPicker_method_erase_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ ) |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_presets<class_ColorPicker_method_get_presets>`\ (\ ) |const|                                            |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_recent_presets<class_ColorPicker_method_get_recent_presets>`\ (\ ) |const|                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`         | :ref:`focused_not_editing_cursor_color<class_ColorPicker_theme_color_focused_not_editing_cursor_color>` | ``Color(1, 1, 1, 0.275)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`center_slider_grabbers<class_ColorPicker_theme_constant_center_slider_grabbers>`                  | ``1``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`h_width<class_ColorPicker_theme_constant_h_width>`                                                | ``30``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`label_width<class_ColorPicker_theme_constant_label_width>`                                        | ``10``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`margin<class_ColorPicker_theme_constant_margin>`                                                  | ``4``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_height<class_ColorPicker_theme_constant_sv_height>`                                            | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_width<class_ColorPicker_theme_constant_sv_width>`                                              | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`add_preset<class_ColorPicker_theme_icon_add_preset>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bar_arrow<class_ColorPicker_theme_icon_bar_arrow>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_hue<class_ColorPicker_theme_icon_color_hue>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_script<class_ColorPicker_theme_icon_color_script>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_ColorPicker_theme_icon_expanded_arrow>`                                      |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_ColorPicker_theme_icon_folded_arrow>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_option<class_ColorPicker_theme_icon_menu_option>`                                            |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`overbright_indicator<class_ColorPicker_theme_icon_overbright_indicator>`                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor<class_ColorPicker_theme_icon_picker_cursor>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor_bg<class_ColorPicker_theme_icon_picker_cursor_bg>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_bg<class_ColorPicker_theme_icon_sample_bg>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_revert<class_ColorPicker_theme_icon_sample_revert>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`screen_picker<class_ColorPicker_theme_icon_screen_picker>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_circle<class_ColorPicker_theme_icon_shape_circle>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect<class_ColorPicker_theme_icon_shape_rect>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect_wheel<class_ColorPicker_theme_icon_shape_rect_wheel>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_circle<class_ColorPicker_theme_style_picker_focus_circle>`                           |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_rectangle<class_ColorPicker_theme_style_picker_focus_rectangle>`                     |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`sample_focus<class_ColorPicker_theme_style_sample_focus>`                                         |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_ColorPicker_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_color_changed>`

更改顏色時發出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_added:

.. rst-class:: classref-signal

**preset_added**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_added>`

新增預設時發出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_removed:

.. rst-class:: classref-signal

**preset_removed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_removed>`

移除預設時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ColorPicker_ColorModeType:

.. rst-class:: classref-enumeration

enum **ColorModeType**: :ref:`🔗<enum_ColorPicker_ColorModeType>`

.. _class_ColorPicker_constant_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RGB** = ``0``

Allows editing the color with Red/Green/Blue sliders in sRGB color space.

.. _class_ColorPicker_constant_MODE_HSV:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_HSV** = ``1``

允許使用色相、飽和度、明度滑桿編輯顏色。

.. _class_ColorPicker_constant_MODE_RAW:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RAW** = ``2``

**已棄用：** This is replaced by :ref:`MODE_LINEAR<class_ColorPicker_constant_MODE_LINEAR>`.



.. _class_ColorPicker_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_LINEAR** = ``2``

Allows editing the color with Red/Green/Blue sliders in linear color space.

.. _class_ColorPicker_constant_MODE_OKHSL:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_OKHSL** = ``3``

允許使用色相/飽和度/亮度滑桿編輯顏色。

OKHSL 是一種類似於 HSL 的新色彩空間，但通過利用設計簡單易用的 Oklab 色彩空間更好地配對感知，同時在預測感知亮度、色度和色調方面做得很好。

\ `Okhsv 和 Okhsl 色彩空間 <https://bottosson.github.io/posts/colorpicker/>`__

.. rst-class:: classref-item-separator

----

.. _enum_ColorPicker_PickerShapeType:

.. rst-class:: classref-enumeration

enum **PickerShapeType**: :ref:`🔗<enum_ColorPicker_PickerShapeType>`

.. _class_ColorPicker_constant_SHAPE_HSV_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_RECTANGLE** = ``0``

HSV 色彩模型矩形色彩空間。

.. _class_ColorPicker_constant_SHAPE_HSV_WHEEL:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_WHEEL** = ``1``

HSV 色彩模型矩形色彩空間，帶輪。

.. _class_ColorPicker_constant_SHAPE_VHS_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_VHS_CIRCLE** = ``2``

HSV 色彩模型圓形色彩空間。半徑為飽和度。

.. _class_ColorPicker_constant_SHAPE_OKHSL_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OKHSL_CIRCLE** = ``3``

HSL OK 色彩模型圓形色彩空間。

.. _class_ColorPicker_constant_SHAPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_NONE** = ``4``

色彩空間形狀和形狀選擇按鈕被隱藏。不能從形狀快顯視窗中選擇。

.. _class_ColorPicker_constant_SHAPE_OK_HS_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HS_RECTANGLE** = ``5``

OKHSL Color Model rectangle with constant lightness.

.. _class_ColorPicker_constant_SHAPE_OK_HL_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HL_RECTANGLE** = ``6``

OKHSL Color Model rectangle with constant saturation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ColorPicker_property_can_add_swatches:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_add_swatches** = ``true`` :ref:`🔗<class_ColorPicker_property_can_add_swatches>`

.. rst-class:: classref-property-setget

- |void| **set_can_add_swatches**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_swatches_enabled**\ (\ )

如果為 ``true``\ ，則可以在色板下新增預設。如果為 ``false``\ ，新增預設的按鈕將被禁用。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ColorPicker_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

目前選擇的顏色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_mode:

.. rst-class:: classref-property

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **color_mode** = ``0`` :ref:`🔗<class_ColorPicker_property_color_mode>`

.. rst-class:: classref-property-setget

- |void| **set_color_mode**\ (\ value\: :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`\ )
- :ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **get_color_mode**\ (\ )

The currently selected color mode.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_modes_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **color_modes_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_color_modes_visible>`

.. rst-class:: classref-property-setget

- |void| **set_modes_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_modes_visible**\ (\ )

如果為 ``true``\ ，則顏色模式按鈕可見。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_deferred_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_mode** = ``false`` :ref:`🔗<class_ColorPicker_property_deferred_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_mode**\ (\ )

如果為 ``true``\ ，只有在使用者鬆開滑鼠按鈕後才會套用顏色，否則即使在鼠標移動事件中也會立即套用（會造成性能問題）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

如果為 ``true``\ ，則顯示 Alpha 通道滑動條（不透明度）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

If ``true``, shows an intensity slider. The intensity is applied as follows: multiply the color by ``2 ** intensity`` in linear RGB space, and then convert it back to sRGB.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_hex_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hex_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_hex_visible>`

.. rst-class:: classref-property-setget

- |void| **set_hex_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hex_visible**\ (\ )

如果為 ``true``\ ，則十六進位顏色程式碼輸入框可見。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_picker_shape:

.. rst-class:: classref-property

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **picker_shape** = ``0`` :ref:`🔗<class_ColorPicker_property_picker_shape>`

.. rst-class:: classref-property-setget

- |void| **set_picker_shape**\ (\ value\: :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>`\ )
- :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **get_picker_shape**\ (\ )

The shape of the color space view.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_presets_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **presets_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_presets_visible>`

.. rst-class:: classref-property-setget

- |void| **set_presets_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_presets_visible**\ (\ )

如果為 ``true``\ ，則色板和近期顏色預設可見。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sampler_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sampler_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sampler_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sampler_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sampler_visible**\ (\ )

如果為 ``true``\ ，則顏色取樣器和顏色預覽可見。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sliders_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sliders_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sliders_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sliders_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_sliders_visible**\ (\ )

如果為 ``true``\ ，則顏色滑桿可見。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ColorPicker_method_add_preset:

.. rst-class:: classref-method

|void| **add_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_preset>`

將給定的顏色新增到顏色預設列表中。預設會顯示在取色器中，可以被使用者選擇。

\ **注意：**\ 預設列表僅適用於\ *這個*\ 取色器。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_add_recent_preset:

.. rst-class:: classref-method

|void| **add_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_recent_preset>`

將給定的顏色新增到近期顏色預設列表中，以便以後可以選擇它。近期預設是最近選擇的顏色，當選擇新顏色時，會自動建立新的預設並將其新增到近期預設中。

\ **注意：**\ 近期預設列表僅適用於\ *這個*\ 取色器。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_preset:

.. rst-class:: classref-method

|void| **erase_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_preset>`

從這個取色器的顏色預設列表中移除給定的顏色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_recent_preset:

.. rst-class:: classref-method

|void| **erase_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_recent_preset>`

從這個取色器的顏色近期預設列表中移除給定的顏色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_presets>`

返回取色器的預設顏色列表。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_recent_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_recent_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_recent_presets>`

返回取色器的近期預設中的顏色列表。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_ColorPicker_theme_color_focused_not_editing_cursor_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **focused_not_editing_cursor_color** = ``Color(1, 1, 1, 0.275)`` :ref:`🔗<class_ColorPicker_theme_color_focused_not_editing_cursor_color>`

Color of rectangle or circle drawn when a picker shape part is focused but not editable via keyboard or joypad. Displayed *over* the picker shape, so a partially transparent color should be used to ensure the picker shape remains visible.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_center_slider_grabbers:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_slider_grabbers** = ``1`` :ref:`🔗<class_ColorPicker_theme_constant_center_slider_grabbers>`

覆蓋滑桿的 :ref:`Slider.center_grabber<class_Slider_theme_constant_center_grabber>` 主題屬性。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_h_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_width** = ``30`` :ref:`🔗<class_ColorPicker_theme_constant_h_width>`

色相選擇滑桿的寬度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_label_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **label_width** = ``10`` :ref:`🔗<class_ColorPicker_theme_constant_label_width>`

滑桿旁顏色標籤的最小寬度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin** = ``4`` :ref:`🔗<class_ColorPicker_theme_constant_margin>`

**ColorPicker** 周圍的邊距。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_height** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_height>`

飽和值選擇框的高度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_width** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_width>`

飽和度選擇框的寬度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_add_preset:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **add_preset** :ref:`🔗<class_ColorPicker_theme_icon_add_preset>`

“新增預設”按鈕的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_bar_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bar_arrow** :ref:`🔗<class_ColorPicker_theme_icon_bar_arrow>`

箭頭抓取器的紋理。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_hue:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_hue** :ref:`🔗<class_ColorPicker_theme_icon_color_hue>`

右側的色相選擇滑桿的自訂紋理。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_script:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_script** :ref:`🔗<class_ColorPicker_theme_icon_color_script>`

The icon for the button that switches color text to hexadecimal.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_expanded_arrow>`

顏色預設下拉式功能表展開時使用的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_folded_arrow>`

顏色預設下拉式功能表折疊時使用的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_menu_option:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_option** :ref:`🔗<class_ColorPicker_theme_icon_menu_option>`

The icon for color preset option menu.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_overbright_indicator:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **overbright_indicator** :ref:`🔗<class_ColorPicker_theme_icon_overbright_indicator>`

該指示器用於指示顏色值在 0-1 範圍之外。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor>`

顯示在色塊/圓（取決於 :ref:`picker_shape<class_ColorPicker_property_picker_shape>`\ ）上的圖像，標記目前選擇的顏色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor_bg** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor_bg>`

The fill image displayed behind the picker cursor.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_bg** :ref:`🔗<class_ColorPicker_theme_icon_sample_bg>`

顏色預覽框的背景面板（顏色為半透明時可見）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_revert:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_revert** :ref:`🔗<class_ColorPicker_theme_icon_sample_revert>`

The icon for the revert button (visible on the middle of the "old" color when it differs from the currently selected color). This icon is modulated with a dark color if the "old" color is bright enough, so the icon should be bright to ensure visibility in both scenarios.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_screen_picker:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **screen_picker** :ref:`🔗<class_ColorPicker_theme_icon_screen_picker>`

螢幕取色器按鈕的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_circle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_circle** :ref:`🔗<class_ColorPicker_theme_icon_shape_circle>`

圓形拾取器形狀的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect>`

矩形拾取器形狀的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect_wheel:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect_wheel** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect_wheel>`

矩形輪拾取器形狀的圖示。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_circle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_circle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_circle>`

The :ref:`StyleBox<class_StyleBox>` used when the circle-shaped part of the picker is focused. Displayed *over* the picker shape, so a partially transparent :ref:`StyleBox<class_StyleBox>` should be used to ensure the picker shape remains visible. A :ref:`StyleBox<class_StyleBox>` that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_rectangle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_rectangle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_rectangle>`

The :ref:`StyleBox<class_StyleBox>` used when the rectangle-shaped part of the picker is focused. Displayed *over* the picker shape, so a partially transparent :ref:`StyleBox<class_StyleBox>` should be used to ensure the picker shape remains visible. A :ref:`StyleBox<class_StyleBox>` that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_sample_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **sample_focus** :ref:`🔗<class_ColorPicker_theme_style_sample_focus>`

The :ref:`StyleBox<class_StyleBox>` used for the old color sample part when it is focused. Displayed *over* the sample, so a partially transparent :ref:`StyleBox<class_StyleBox>` should be used to ensure the picker shape remains visible. A :ref:`StyleBox<class_StyleBox>` that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
