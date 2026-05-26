:github_url: hide

.. _class_ColorPicker:

ColorPicker
===========

**继承：** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

提供用于选择或修改颜色的界面的小工具。

.. rst-class:: classref-introduction-group

描述
----

提供用于选择或修改颜色的界面的小工具。还可以提供取色器（吸管）、颜色模式、预设等功能。

\ **注意：**\ 这个控件就是取色器本身。如果你需要一个能够弹出 **ColorPicker** 窗口的按钮，可以改用 :ref:`ColorPickerButton<class_ColorPickerButton>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `补间插值演示 <https://godotengine.org/asset-library/asset/2733>`__

.. rst-class:: classref-reftable-group

属性
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

主题属性
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
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_copy<class_ColorPicker_theme_icon_color_copy>`                                              |                           |
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

信号
----

.. _class_ColorPicker_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_color_changed>`

更改颜色时发出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_added:

.. rst-class:: classref-signal

**preset_added**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_added>`

添加预设时发出。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_removed:

.. rst-class:: classref-signal

**preset_removed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_removed>`

移除预设时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ColorPicker_ColorModeType:

.. rst-class:: classref-enumeration

enum **ColorModeType**: :ref:`🔗<enum_ColorPicker_ColorModeType>`

.. _class_ColorPicker_constant_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RGB** = ``0``

允许使用红、绿、蓝滑块在 sRGB 色彩空间中编辑颜色。

.. _class_ColorPicker_constant_MODE_HSV:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_HSV** = ``1``

允许使用色相、饱和度、明度滑块编辑颜色。

.. _class_ColorPicker_constant_MODE_RAW:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RAW** = ``2``

**已弃用：** This is replaced by :ref:`MODE_LINEAR<class_ColorPicker_constant_MODE_LINEAR>`.



.. _class_ColorPicker_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_LINEAR** = ``2``

允许使用红、绿、蓝滑块在线性色彩空间中编辑颜色。

.. _class_ColorPicker_constant_MODE_OKHSL:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_OKHSL** = ``3``

允许使用色相/饱和度/亮度滑块编辑颜色。

OKHSL 是一种类似于 HSL 的新色彩空间，但通过利用设计简单易用的 Oklab 色彩空间更好地匹配感知，同时在预测感知亮度、色度和色调方面做得很好。

\ `Okhsv 和 Okhsl 色彩空间 <https://bottosson.github.io/posts/colorpicker/>`__

.. rst-class:: classref-item-separator

----

.. _enum_ColorPicker_PickerShapeType:

.. rst-class:: classref-enumeration

enum **PickerShapeType**: :ref:`🔗<enum_ColorPicker_PickerShapeType>`

.. _class_ColorPicker_constant_SHAPE_HSV_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_RECTANGLE** = ``0``

HSV 颜色模型矩形色彩空间。

.. _class_ColorPicker_constant_SHAPE_HSV_WHEEL:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_WHEEL** = ``1``

HSV 颜色模型矩形色彩空间，带轮。

.. _class_ColorPicker_constant_SHAPE_VHS_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_VHS_CIRCLE** = ``2``

HSV 颜色模型圆形色彩空间。半径为饱和度。

.. _class_ColorPicker_constant_SHAPE_OKHSL_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OKHSL_CIRCLE** = ``3``

HSL OK 颜色模型圆形色彩空间。

.. _class_ColorPicker_constant_SHAPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_NONE** = ``4``

色彩空间形状和形状选择按钮被隐藏。不能从形状弹出窗口中选择。

.. _class_ColorPicker_constant_SHAPE_OK_HS_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HS_RECTANGLE** = ``5``

具有恒定亮度的 OKHSL 颜色模型矩形。

.. _class_ColorPicker_constant_SHAPE_OK_HL_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HL_RECTANGLE** = ``6``

具有恒定饱和度的 OKHSL 颜色模型矩形。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ColorPicker_property_can_add_swatches:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_add_swatches** = ``true`` :ref:`🔗<class_ColorPicker_property_can_add_swatches>`

.. rst-class:: classref-property-setget

- |void| **set_can_add_swatches**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_swatches_enabled**\ (\ )

如果为 ``true``\ ，则可以在色板下添加预设。如果为 ``false``\ ，添加预设的按钮将被禁用。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ColorPicker_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

当前选择的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_mode:

.. rst-class:: classref-property

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **color_mode** = ``0`` :ref:`🔗<class_ColorPicker_property_color_mode>`

.. rst-class:: classref-property-setget

- |void| **set_color_mode**\ (\ value\: :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`\ )
- :ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **get_color_mode**\ (\ )

当前选择的颜色模式。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_modes_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **color_modes_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_color_modes_visible>`

.. rst-class:: classref-property-setget

- |void| **set_modes_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_modes_visible**\ (\ )

如果为 ``true``\ ，则颜色模式按钮可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_deferred_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_mode** = ``false`` :ref:`🔗<class_ColorPicker_property_deferred_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_mode**\ (\ )

如果为 ``true``\ ，只有在用户松开鼠标按钮后才会应用颜色，否则即使在鼠标移动事件中也会立即应用（会造成性能问题）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

如果为 ``true``\ ，则显示 Alpha 通道滑块（不透明度）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

如果为 ``true`` 则显示强度滑块。强度的应用方式如下：将颜色转换为线性编码，乘以 ``2 ** intensity``\ ，然后将其转换回非线性 sRGB 编码。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_hex_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hex_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_hex_visible>`

.. rst-class:: classref-property-setget

- |void| **set_hex_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hex_visible**\ (\ )

如果为 ``true``\ ，则十六进制颜色代码输入框可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_picker_shape:

.. rst-class:: classref-property

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **picker_shape** = ``0`` :ref:`🔗<class_ColorPicker_property_picker_shape>`

.. rst-class:: classref-property-setget

- |void| **set_picker_shape**\ (\ value\: :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>`\ )
- :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **get_picker_shape**\ (\ )

色彩空间视图的形状。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_presets_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **presets_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_presets_visible>`

.. rst-class:: classref-property-setget

- |void| **set_presets_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_presets_visible**\ (\ )

如果为 ``true``\ ，则色板和近期颜色预设可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sampler_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sampler_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sampler_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sampler_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sampler_visible**\ (\ )

如果为 ``true``\ ，则颜色采样器和颜色预览可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sliders_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sliders_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sliders_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sliders_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_sliders_visible**\ (\ )

如果为 ``true``\ ，则颜色滑块可见。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ColorPicker_method_add_preset:

.. rst-class:: classref-method

|void| **add_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_preset>`

将给定的颜色添加到颜色预设列表中。预设会显示在取色器中，可以被用户选择。

\ **注意：**\ 预设列表仅适用于\ *这个*\ 取色器。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_add_recent_preset:

.. rst-class:: classref-method

|void| **add_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_recent_preset>`

将给定的颜色添加到近期颜色预设列表中，以便以后可以选择它。近期预设是最近选择的颜色，当选择新颜色时，会自动创建新的预设并将其添加到近期预设中。

\ **注意：**\ 近期预设列表仅适用于\ *这个*\ 取色器。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_preset:

.. rst-class:: classref-method

|void| **erase_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_preset>`

从这个取色器的颜色预设列表中移除给定的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_recent_preset:

.. rst-class:: classref-method

|void| **erase_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_recent_preset>`

从这个取色器的颜色近期预设列表中移除给定的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_presets>`

返回取色器的预设颜色列表。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_recent_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_recent_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_recent_presets>`

返回取色器的近期预设中的颜色列表。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_ColorPicker_theme_color_focused_not_editing_cursor_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **focused_not_editing_cursor_color** = ``Color(1, 1, 1, 0.275)`` :ref:`🔗<class_ColorPicker_theme_color_focused_not_editing_cursor_color>`

当选择器的形状部分获得焦点但无法通过键盘或手柄编辑时，矩形或圆形的绘制颜色。该颜色显示在选择器形状\ *上方*\ ，因此应使用部分透明的颜色，确保选择器形状仍然可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_center_slider_grabbers:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_slider_grabbers** = ``1`` :ref:`🔗<class_ColorPicker_theme_constant_center_slider_grabbers>`

覆盖滑块的 :ref:`Slider.center_grabber<class_Slider_theme_constant_center_grabber>` 主题属性。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_h_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_width** = ``30`` :ref:`🔗<class_ColorPicker_theme_constant_h_width>`

色相选择滑块的宽度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_label_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **label_width** = ``10`` :ref:`🔗<class_ColorPicker_theme_constant_label_width>`

滑块旁颜色标签的最小宽度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin** = ``4`` :ref:`🔗<class_ColorPicker_theme_constant_margin>`

**ColorPicker** 周围的边距。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_height** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_height>`

饱和值选择框的高度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_width** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_width>`

饱和度选择框的宽度。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_add_preset:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **add_preset** :ref:`🔗<class_ColorPicker_theme_icon_add_preset>`

“添加预设”按钮的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_bar_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bar_arrow** :ref:`🔗<class_ColorPicker_theme_icon_bar_arrow>`

箭头抓取器的纹理。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_copy:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_copy** :ref:`🔗<class_ColorPicker_theme_icon_color_copy>`

The icon for the button that copies the color in text format to the clipboard.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_hue:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_hue** :ref:`🔗<class_ColorPicker_theme_icon_color_hue>`

右侧的色相选择滑块的自定义纹理。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_script:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_script** :ref:`🔗<class_ColorPicker_theme_icon_color_script>`

用于将颜色文本切换为十六进制的按钮的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_expanded_arrow>`

颜色预设下拉菜单展开时使用的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_folded_arrow>`

颜色预设下拉菜单折叠时使用的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_menu_option:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_option** :ref:`🔗<class_ColorPicker_theme_icon_menu_option>`

颜色预设菜单的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_overbright_indicator:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **overbright_indicator** :ref:`🔗<class_ColorPicker_theme_icon_overbright_indicator>`

该指示器用于指示颜色值在 0-1 范围之外。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor>`

显示在颜色框/圆（取决于 :ref:`picker_shape<class_ColorPicker_property_picker_shape>`\ ）上的图像，标记当前选择的颜色。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor_bg** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor_bg>`

拾取器光标后显示的填充图像。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_bg** :ref:`🔗<class_ColorPicker_theme_icon_sample_bg>`

颜色预览框的背景面板（颜色为半透明时可见）。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_revert:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_revert** :ref:`🔗<class_ColorPicker_theme_icon_sample_revert>`

恢复按钮的图标（“旧”颜色与当前选中颜色不同时会在其中间显示）。如果“旧”颜色足够亮，那么这个图标会和暗色进行调制，这样图标应该就能够在不同的情况下都保持可见。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_screen_picker:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **screen_picker** :ref:`🔗<class_ColorPicker_theme_icon_screen_picker>`

屏幕取色器按钮的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_circle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_circle** :ref:`🔗<class_ColorPicker_theme_icon_shape_circle>`

圆形拾取器形状的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect>`

矩形拾取器形状的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect_wheel:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect_wheel** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect_wheel>`

矩形轮拾取器形状的图标。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_circle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_circle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_circle>`

拾取器的圆形部分处于聚焦状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。显示在拾取器形状\ *之上*\ ，所以应该使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，确保拾取器形状仍然可见。代表轮廓或下划线的 :ref:`StyleBox<class_StyleBox>` 可以很好地实现这个目的。要禁用聚焦的视觉效果，请指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 资源。请注意，禁用聚焦的视觉效果会影响使用键盘/手柄进行导航的可用性，所以出于无障碍访问的原因，不建议这样做。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_rectangle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_rectangle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_rectangle>`

拾取器的矩形部分处于聚焦状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。显示在拾取器形状\ *之上*\ ，所以应该使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，确保拾取器形状仍然可见。代表轮廓或下划线的 :ref:`StyleBox<class_StyleBox>` 可以很好地实现这个目的。要禁用聚焦的视觉效果，请指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 资源。请注意，禁用聚焦的视觉效果会影响使用键盘/手柄进行导航的可用性，所以出于无障碍访问的原因，不建议这样做。

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_sample_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **sample_focus** :ref:`🔗<class_ColorPicker_theme_style_sample_focus>`

旧颜色样本部分处于聚焦状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。显示在样本\ *之上*\ ，所以应该使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，确保拾取器形状仍然可见。代表轮廓或下划线的 :ref:`StyleBox<class_StyleBox>` 可以很好地实现这个目的。要禁用聚焦的视觉效果，请指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 资源。请注意，禁用聚焦的视觉效果会影响使用键盘/手柄进行导航的可用性，所以出于无障碍访问的原因，不建议这样做。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
